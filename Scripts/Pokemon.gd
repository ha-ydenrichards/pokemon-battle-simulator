class_name Pokemon
extends Node

var pokemon_name: String
var hp_stat: int
var current_hp: int
var attack: int
var defense: int
var special_attack: int
var special_defense: int
var speed: int
var types: Array
var moves: Array
var front_sprite: String
var back_sprite: String
var current_move: String
var damage_dealt: int
var damage_multiplier: float


# Constructor that initializes a Pokemon's stats, using its entry in the PokemonDB.
func _init(data):
	pokemon_name = data["name"]
	hp_stat = data["hp"]
	current_hp = calculate_hp(hp_stat)
	attack = data["attack"]
	defense = data["defense"]
	special_attack = data["special attack"]
	special_defense = data["special defense"]
	speed = data["speed"]
	types = data["type"]
	moves = data["moves"]
	front_sprite = data["front_sprite"]
	back_sprite = data["back_sprite"]
	current_move = ""
	damage_dealt = 0
	damage_multiplier = 1.0

# Calculates a Pokemon's total hit points (hp).
func calculate_hp(hp_stat):
	return int(((2 * hp_stat  * 50) / 100) + 50 + 10)
	
