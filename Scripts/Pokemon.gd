class_name Pokemon
extends Node

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
var front_sprite: String
var back_sprite



func _init(data):
	pokemon_name = data["name"]
	max_hp = data["hp"]
	current_hp = max_hp
	attack = data["attack"]
	defense = data["defense"]
	special_attack = data["special attack"]
	special_defense = data["special defense"]
	speed = data["speed"]
	types = data["type"]
	moves = data["moves"]
	front_sprite = data["front_sprite"]
	back_sprite = data["back_sprite"]

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass
