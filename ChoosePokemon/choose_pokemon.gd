extends Node2D
@onready var pokemon_select_button = $SelectPokemon
var current_player = 1
var player_selection = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pokemon_select_button.text = "Player 1 Select"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_pick_ampharos_pressed() -> void:
	player_selection = "Ampharos"

func _on_pick_crobat_pressed() -> void:
	player_selection = "Crobat"


func _on_select_pokemon_pressed() -> void:
	# If the player clicks the Select Pokemon button, but haven't picked a pokemon yet, do nothing.
	if player_selection != null:
		# If the current player selecting is player 1
		if current_player == 1:
			# Make a new pokemon object and switch to player 2
			GameManager.player1_pokemon = Pokemon.new(PokemonDB.POKEMON_DATA[player_selection]) 
			current_player = 2
			pokemon_select_button.text = "Player 2 Select"
			player_selection = null
		# If the current player selecting is player 2
		else:
			# Make a new pokemon object and change to the Battle Scene
			GameManager.player2_pokemon = Pokemon.new(PokemonDB.POKEMON_DATA[player_selection])	
			get_tree().change_scene_to_file("res://Battle/battle_scene.tscn")

func _on_pick_houndoom_pressed() -> void:
	player_selection = "Houndoom"

func _on_pick_kingdra_pressed() -> void:
	player_selection = "Kingdra"

func _on_pick_tinkaton_pressed() -> void:
	player_selection = "Tinkaton"
