extends Node

var MOVES = {
"Air Slash": {
		"type": "Air",
		"power": 75,
		"accuracy": 95,
		"category": "Special",
		"flinch": .33
	},
	"Dark Pulse": {
		"type": "Dark",
		"power": 80,
		"accuracy": 100,
		"category": "Special"
	},
	"Confuse Ray": {
		"type": "Ghost",
		"accuracy": 100,
		"category": "Status"
	},

	"Double-Edge": {
		"type": "Normal",
		"power": 120,
		"accuracy": 100,
		"category": "Physical",
		"recoil": 0.33
	},
	"Fire Punch": {
		"type": "Fire",
		"power": 75,
		"accuracy": 100,
		"category": "Physical"
	},
	"Ice Punch": {
		"type": "Ice",
		"power": 75,
		"accuracy": 100,
		"category": "Physical"
	},

	"Light Screen": {
		"type": "Psychic",
		"category": "Status",
		"effect": "light_screen",
		"duration": 5
		
	},
	"Poison Fang": {
		"type": "Poison",
		"power": 50,
		"accuracy": 100,
		"category": "Physical"
	},
	"Sludge Bomb": {
		"type": "Poison",
		"power": 90,
		"accuracy": 100,
		"category": "Special"
	},
	 "Thunderbolt": {
		"type": "Electric",
		"power": 90,
		"accuracy": 100,
		"category": "Special"
	}
}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
