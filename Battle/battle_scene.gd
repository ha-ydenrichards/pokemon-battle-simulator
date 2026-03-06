extends Node2D
@onready var player1_sprite = $Player1Sprite
@onready var player2_sprite = $Player2Sprite





func _ready():
	if GameManager.player1_pokemon:
		player1_sprite.texture = load(GameManager.player1_pokemon.sprite)
	if GameManager.player2_pokemon:
		player2_sprite.texture = load(GameManager.player2_pokemon.sprite)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
