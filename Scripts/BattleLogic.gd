extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func speed_calc() -> void:
	if GameManager.player1_pokemon.speed > GameManager.player2_pokemon.speed:
		player_one_attack()
	elif GameManager.player1_pokemon.speed < GameManager.player2_pokemon.speed:
		player_two_attack()
	else:
		var speed_tie = randi_range(1,2)
		if speed_tie == 1:
			player_one_attack()
		else:
			player_two_attack()
	
func player_one_attack() -> void:
	var player_one_damage = calculate_damage(GameManager.player1_pokemon, GameManager.player2_pokemon, GameManager.player1_pokemon.current_move)

func player_two_attack() -> void:
	var player_two_damage = calculate_damage(GameManager.player2_pokemon, GameManager.player1_pokemon, GameManager.player2_pokemon.current_move)
	
func calculate_damage(attacker, defender, move) -> int:
	var level = 50
	var move_power = MoveDatabase.MOVES[move]["power"]
	var attack_power = null
	var defense_power = null
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
	if randi_range(1, 16) == 1:
		crit = 1.5

	# Type effectiveness (placeholder)
	var effectiveness = get_type_effectiveness(MoveDatabase.MOVES[move]["type"], defender.types)

	var modifier = random_multiplier * stab * crit * effectiveness

	var damage = int(base_damage * modifier)
	print(damage)
	return damage

func get_type_effectiveness(move_type, defender_types):

	var multiplier = 1.0

	for type in defender_types:

		if TypeChart.TYPE_CHART.has(move_type):
			if TypeChart.TYPE_CHART[move_type].has(type):
				multiplier *= TypeChart.TYPE_CHART[move_type][type]

	return multiplier
