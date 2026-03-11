extends Node2D
@onready var player1_sprite = $Player1Sprite
@onready var player2_sprite = $Player2Sprite



func _ready():
	if GameManager.player1_pokemon:
		player1_sprite.texture = load(GameManager.player1_pokemon.back_sprite)
	if GameManager.player2_pokemon:
		player2_sprite.texture = load(GameManager.player2_pokemon.front_sprite)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
