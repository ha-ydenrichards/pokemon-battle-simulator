extends Node

@onready var player_move_label = $PlayerMoveLabel

var first_attack: int
var both_attacked = true
var first_pokemon
var second_pokemon



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func speed_calc() -> Array:
	# If player 1's pokemon is faster, they attack first
	if GameManager.player1_pokemon.speed > GameManager.player2_pokemon.speed:
		first_attack = 1
		first_pokemon = GameManager.player1_pokemon
		second_pokemon = GameManager.player2_pokemon
		player_one_attack()
	# If player 2's pokemon is faster, they attack first
	elif GameManager.player1_pokemon.speed < GameManager.player2_pokemon.speed:
		first_attack = 2
		first_pokemon = GameManager.player2_pokemon
		second_pokemon = GameManager.player1_pokemon
		player_two_attack()
	else:
		# If the speed of each pokemon is the same, we have a speed tie and randomly select who attacks first.
		var speed_tie = randi_range(1,2)
		if speed_tie == 1:
			first_attack = 1
			first_pokemon = GameManager.player1_pokemon
			second_pokemon = GameManager.player2_pokemon
			player_one_attack()
		else:
			first_attack = 2
			first_pokemon = GameManager.player1_pokemon
			second_pokemon = GameManager.player2_pokemon
			player_two_attack()
	print([first_pokemon, second_pokemon])
	return [first_pokemon, second_pokemon]

# Calculates the total damage of player one's attack and stores it in the damage_dealt variable
func player_one_attack() -> void:
	GameManager.player1_pokemon.damage_dealt = await calculate_damage(GameManager.player1_pokemon, GameManager.player2_pokemon, GameManager.player1_pokemon.current_move)
	second_attack()
	
# Calculates the total damage of player two's attack and stores it in the damage_dealt variable
func player_two_attack() -> void:
	GameManager.player2_pokemon.damage_dealt = await calculate_damage(GameManager.player2_pokemon, GameManager.player1_pokemon, GameManager.player2_pokemon.current_move)
	second_attack()

func second_attack() -> void:
	if both_attacked != true:
		if first_attack == 1:
			GameManager.player2_pokemon.damage_dealt = await calculate_damage(GameManager.player2_pokemon, GameManager.player1_pokemon, GameManager.player2_pokemon.current_move)
		else:
			GameManager.player1_pokemon.damage_dealt = await calculate_damage(GameManager.player1_pokemon, GameManager.player2_pokemon, GameManager.player1_pokemon.current_move)

	
func calculate_damage(attacker, defender, move) -> int:
	var level = 50
	var move_power = MoveDatabase.MOVES[move]["power"]
	var attack_power = null
	var defense_power = null
	# Reverses the both_attacked boolean. If the second pokemon is attacking, this boolean swaps to true, 
	# telling the program both pokemon have used their selected attacks.
	both_attacked = !both_attacked
	if MoveDatabase.MOVES[move]["category"] == "Physical":
		attack_power = attacker.attack
		defense_power = defender.defense
	elif MoveDatabase.MOVES[move]["category"] == "Special":
		attack_power = attacker.special_attack
		defense_power = defender.special_defense
	# Base damage
	var base_damage = ((2 * level / 5 + 2) * move_power * attack_power / defense_power) / 50 + 2

	# Random factor (85% - 100%)
	var random_multiplier = randf_range(0.85, 1.0)

	# STAB (Same Type Attack Bonus)
	var stab = 1.0
	for i in range(0, attacker.types.size()):
		if attacker.types[i] == MoveDatabase.MOVES[move]["type"]:
			stab = 1.5

	# Critical hit (simplified)
	var crit = 1.0
	if randi_range(1, 1) == 1:
		crit = 1.5
		print("CRITICAL HIT")
		GameManager.player_move_label.text = "A critical hit! " + str(randi())
		await get_tree().create_timer(2.0).timeout

	# Type effectiveness (placeholder)
	print("Move: " + move)
	print(defender.types)
	var effectiveness = get_type_effectiveness(MoveDatabase.MOVES[move]["type"], defender.types)
	
	# Sets multiplier to pokemon object
	attacker.damage_multiplier = effectiveness
	
	var modifier = random_multiplier * stab * crit * effectiveness

	var damage = int(base_damage * modifier)
	
	# If move accuracy is less than 100, calculate whether or not the move hits
	if MoveDatabase.MOVES[move]["accuracy"] < 100:
		var random_num = randi_range(1,100)
		if random_num >= MoveDatabase.MOVES[move]["accuracy"]:
			damage = 0
	return damage


func get_type_effectiveness(move_type, defender_types):
	# Base multiplier
	var multiplier = 1.0
	# Loop through the defender pokemon's types
	for type in defender_types:
		# Check if the defender's type is listed as a weakness or resistance in the move type dictionary
		if TypeChart.TYPE_CHART[move_type].has(type):
			multiplier *= TypeChart.TYPE_CHART[move_type][type]
			print(move_type + ": " + str(multiplier))

	return multiplier
