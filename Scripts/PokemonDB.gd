extends Node
var POKEMON_DATA = {
		"Ampharos": {
		"name": "Ampharos",
		"hp": 90,
		"attack": 75,
		"defense": 85,
		"special attack": 115,
		"special defense": 90,
		"speed": 100,
		"type": ["Electric"],
		"moves": ["Thunderbolt", "Fire Punch", "Ice Punch", "Double Edge"],
		"front_sprite": "res://Assets/PokemonSprites/ampharos_front.png",
		"back_sprite": "res://Assets/PokemonSprites/ampharos_back.png"
	},
	"Blastoise": {
		"name": "Blastoise",
		"hp": 79,
		"attack": 83,
		"defense": 100,
		"special attack": 85,
		"special defense": 105,
		"speed": 78,
		"type": ["Water"],
		"moves": ["Hydro Pump", "Liquidation", "Earthquake", "Double Edge"],
		"front_sprite": "res://Assets/PokemonSprites/blastoise_front.png",
		"back_sprite": "res://Assets/PokemonSprites/blastoise_back.png"
	},
	"Charizard": {
		"name": "Charizard",
		"hp": 78,
		"attack": 84,
		"defense": 78,
		"special attack": 109,
		"special defense": 85,
		"speed": 100,
		"type": ["Fire", "Flying"],
		"moves": ["Dragon Claw", "Flamethrower", "Flare Blitz", "Shadow Claw"],
		"front_sprite": "res://Assets/PokemonSprites/charizard_front.png",
		"back_sprite": "res://Assets/PokemonSprites/charizard_back.png"
	},
	"Crobat": {
		"name": "Crobat",
		"hp": 85,
		"attack": 90,
		"defense": 80,
		"special attack": 70,
		"special defense": 80,
		"speed": 130,
		"type": ["Poison", "Flying"],
		"moves": ["Air Slash", "Sludge Bomb", "Dark Pulse", "Shadow Ball"],
		"front_sprite": "res://Assets/PokemonSprites/crobat_front.png",
		"back_sprite": "res://Assets/PokemonSprites/crobat_back.png"
	},
	"Houndoom": {
		"name": "Houndoom",
		"hp": 75,
		"attack": 90,
		"defense": 50,
		"special attack": 110,
		"special defense": 80,
		"speed": 95,
		"type": ["Dark", "Fire"],
		"moves": ["Flamethrower", "Crunch", "Dark Pulse", "Overheat"],
		"front_sprite": "res://Assets/PokemonSprites/houndoom_front.png",
		"back_sprite": "res://Assets/PokemonSprites/houndoom_back.png"
	},
	"Kingdra": {
		"name": "Kingdra",
		"hp": 75,
		"attack": 95,
		"defense": 95,
		"special attack": 95,
		"special defense": 95,
		"speed": 85,
		"type": ["Water","Dragon"],
		"moves": ["Hydro Pump", "Dragon Pulse", "Wave Crash", "Ice Beam"],
		"front_sprite": "res://Assets/PokemonSprites/kingdra_front.png" ,
		"back_sprite": "res://Assets/PokemonSprites/kingdra_back.png"
	},
	"Venusaur": {
		"name": "Venusaur",
		"hp": 80,
		"attack": 82,
		"defense": 83,
		"special attack": 100,
		"special defense": 100,
		"speed": 80,
		"type": ["Grass", "Poison"],
		"moves": ["Energy Ball", "Giga Drain", "Earth Power", "Sludge Bomb"],
		"front_sprite": "res://Assets/PokemonSprites/venusaur_front.png",
		"back_sprite": "res://Assets/PokemonSprites/venusaur_back.png"
	}
}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
