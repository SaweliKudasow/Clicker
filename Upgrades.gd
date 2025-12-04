extends Node

var upgrades := {
	"manual_gain": {
		"level": 0,
		"values": [1, 2, 3, 4, 5, 6],
		"costs": [
			{"stone": 0, "wood": 0},
			{"stone": 0, "wood": 0},
			{"stone": 0, "wood": 0},
			{"stone": 0, "wood": 0},
			{"stone": 0, "wood": 0},
		],
	},
	"manual_speed": {
		"level": 0,
		"values": [9, 8, 7, 6, 5, 4],
		"costs": [
			{"stone": 0, "wood": 0},
			{"stone": 0, "wood": 0},
			{"stone": 0, "wood": 0},
			{"stone": 0, "wood": 0},
			{"stone": 0, "wood": 0},
		]
	}
}

func get_cost(type: String) -> Dictionary:
	var lvl = upgrades[type]["level"]
	var costs = upgrades[type]["costs"]
	
	if lvl >= costs.size():
		return {"stone": -1, "wood": -1}
	
	return costs[lvl]

func get_value(type: String):
	var lvl = upgrades[type]["level"]
	var values = upgrades[type]["values"]
	
	return values[lvl]

func get_level(type:String) -> int:
	return upgrades[type]["level"]

func upgrade(type: String):
	upgrades[type]["level"] += 1
