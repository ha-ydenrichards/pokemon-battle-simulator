extends Node
class_name Pokemon

var pokemon_name: String
var max_hp: int
var current_hp: int
var attack: int
var defense: int
var special_attack: int
var special_defense: int
var speed: int
var types: Array
var moves: Array
var sprite: String

func _init(data):
	pokemon_name = data["name"]
	max_hp = data["hp"]
	current_hp = max_hp
	attack = data["attack"]
	defense = data["defense"]
	special_attack = data["special attack"]
	special_defense = data["special defense"]
	speed = data["speed"]
	types = data["types"]
	moves = data["moves"]
	sprite = data["sprite"]

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass
