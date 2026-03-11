extends Node2D
var current_player = 1
var player_selection = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pick_ampharos_pressed() -> void:
	player_selection = "Ampharos"


func _on_pick_crobat_pressed() -> void:
	player_selection = "Crobat"


func _on_select_pokemon_pressed() -> void:
	if current_player == 1:
		GameManager.player1_pokemon = Pokemon.new(PokemonDB.POKEMON_DATA[player_selection]) 
		current_player = 2
	else:
		GameManager.player2_pokemon = Pokemon.new(PokemonDB.POKEMON_DATA[player_selection])	
		get_tree().change_scene_to_file("res://Battle/battle_scene.tscn")
