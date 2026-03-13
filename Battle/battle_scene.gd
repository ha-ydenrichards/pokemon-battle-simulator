extends Node2D
@onready var player1_sprite = $Player1Sprite
@onready var player2_sprite = $Player2Sprite
@onready var first_move = $MarginContainer/HBoxContainer/VBoxContainer/FirstMove
@onready var second_move = $MarginContainer/HBoxContainer/VBoxContainer/SecondMove
@onready var third_move = $MarginContainer/HBoxContainer/HBoxContainer2/VBoxContainer/ThirdMove
@onready var fourth_move = $MarginContainer/HBoxContainer/HBoxContainer2/VBoxContainer/FourthMove
@onready var player1_pokemon_health = $Player1Pokemon
@onready var player2_pokemon_health = $Player2Pokemon
@onready var player_move_label = $PlayerMoveLabel
@onready var timer = $Timer
var current_player = 1


func _ready():
	# Loads player 1's pokemon sprite texture and displays their moves first.
	if GameManager.player1_pokemon:
		player1_sprite.texture = load(GameManager.player1_pokemon.back_sprite)
		first_move.text = GameManager.player1_pokemon.moves[0]
		second_move.text = GameManager.player1_pokemon.moves[1]
		third_move.text = GameManager.player1_pokemon.moves[2]
		fourth_move.text = GameManager.player1_pokemon.moves[3]
		player1_pokemon_health.text = GameManager.player1_pokemon.pokemon_name + ": " + str(GameManager.player1_pokemon.current_hp)
		player_move_label.text = "What will " + str(GameManager.player1_pokemon.pokemon_name) + " do?"

	# Loads player 2's pokemon sprite texture but does not display their moves first.
	if GameManager.player2_pokemon:
		player2_sprite.texture = load(GameManager.player2_pokemon.front_sprite)
		player2_pokemon_health.text = GameManager.player2_pokemon.pokemon_name + ": " + str(GameManager.player2_pokemon.current_hp)
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# If the player presses the top left move button
func _on_first_move_pressed() -> void:
	if current_player == 1:
		GameManager.player1_pokemon.current_move = first_move.text
		current_player = 2
	else:
		GameManager.player2_pokemon.current_move = first_move.text
		current_player = 1
	switch_moves()

# If the player presess the top right move button
func _on_second_move_pressed() -> void:
	if current_player == 1:
		GameManager.player1_pokemon.current_move = second_move.text
		current_player = 2
	else:
		GameManager.player2_pokemon.current_move = second_move.text
		current_player = 1
	switch_moves()

# If the player presses the bottom left move button
func _on_third_move_pressed() -> void:
	if current_player == 1:
		GameManager.player1_pokemon.current_move = third_move.text
		current_player = 2
	else:
		GameManager.player2_pokemon.current_move = third_move.text
		current_player = 1
	switch_moves()

# If the player presses the bottom right move button
func _on_fourth_move_pressed() -> void:
	if current_player == 1:
		GameManager.player1_pokemon.current_move = fourth_move.text
		current_player = 2
	else:
		GameManager.player2_pokemon.current_move = fourth_move.text
		current_player = 1
	switch_moves()

# This function swaps the buttons with the correct move names after one player chooses their move
func switch_moves() -> void:
	if current_player == 1:
		# If the player has been switched back to one, we can begin the Battle Logic.
		# speed_calc() is called and the moves are switched after the logic is done.
		var pokemon_order = BattleLogic.speed_calc()
		await display_battle_info(pokemon_order)
		first_move.text = GameManager.player1_pokemon.moves[0]
		second_move.text = GameManager.player1_pokemon.moves[1]
		third_move.text = GameManager.player1_pokemon.moves[2]
		fourth_move.text = GameManager.player1_pokemon.moves[3]
		player_move_label.text = "What will " + str(GameManager.player1_pokemon.pokemon_name) + " do?"

	else:
		first_move.text = GameManager.player2_pokemon.moves[0]
		second_move.text = GameManager.player2_pokemon.moves[1]
		third_move.text = GameManager.player2_pokemon.moves[2]
		fourth_move.text = GameManager.player2_pokemon.moves[3]
		player_move_label.text = "What will " + str(GameManager.player2_pokemon.pokemon_name) + " do?"

# This function updates labels and displays damage output and move selection.
func display_battle_info(pokemon_order) -> void:
	player_move_label.text = pokemon_order[0].pokemon_name + " used " + pokemon_order[0].current_move + "!"
	await get_tree().create_timer(2.0).timeout
	
	
		
