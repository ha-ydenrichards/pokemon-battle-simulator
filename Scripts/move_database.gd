extends Node

var MOVES = {
	"Air Slash": {
		"type": "Flying",
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
	"Crunch": {
		"type": "Dark",
		"power": 80,
		"accuracy": 100,
		"category": "Physical"
	},
	"Double Edge": {
		"type": "Normal",
		"power": 120,
		"accuracy": 100,
		"category": "Physical",
		"recoil": 0.33
	},
	"Dragon Claw": {
		"type": "Dragon",
		"power": 80,
		"accuracy": 100,
		"category": "Physical"
	},
	"Dragon Pulse": {
		"type": "Dragon",
		"power": 85,
		"accuracy": 100,
		"category": "Special"
	},
	"Earth Power": {
		"type": "Ground",
		"power": 90,
		"accuracy": 100,
		"category": "Special"
	},
	"Earthquake": {
		"type": "Ground",
		"power": 100,
		"accuracy": 100,
		"category": "Physical"
	},
	"Energy Ball": {
		"type": "Grass",
		"power": 90,
		"accuracy": 100,
		"category": "Special"
	},
	"Fire Punch": {
		"type": "Fire",
		"power": 75,
		"accuracy": 100,
		"category": "Physical"
	},
	"Flamethrower": {
		"type": "Fire",
		"power": 90,
		"accuracy": 100,
		"category": "Special"
	},
	"Flare Blitz": {
		"type": "Fire",
		"power": 120,
		"accuracy": 100,
		"category": "Physical",
		"recoil": 0.33
	},
	"Giga Drain": {
		"type": "Grass",
		"power": 75,
		"accuracy": 100,
		"category": "Special",
		"healing": 0.5
	},
	"Hydro Pump": {
		"type": "Water",
		"power": 110,
		"accuracy": 80,
		"category": "Special"
	},
	"Ice Beam": {
		"type": "Ice",
		"power": 90,
		"accuracy": 100,
		"category": "Special"
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
	"Liquidation": {
		"type": "Water",
		"power": 80,
		"accuracy": 100,
		"category": "Physical"
	},
	"Overheat": {
		"type": "Fire",
		"power": 130,
		"accuracy": 90,
		"category": "Special"
	},
	"Poison Fang": {
		"type": "Poison",
		"power": 50,
		"accuracy": 100,
		"category": "Physical"
	},
	"Shadow Claw": {
		"type": "Ghost",
		"power": 70,
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
	},
	"Wave Crash": {
		"type": "Water",
		"power": 120,
		"accuracy": 100,
		"category": "Physical"
	}
}
