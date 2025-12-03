extends Node

var upgrades := {
	"manual_gain": {
		"level": 0,
		"values": [1, 2, 3, 4, 5, 6],
		"costs": [
			{"stone": 1, "wood": 1},
			{"stone": 2, "wood": 2},
			{"stone": 3, "wood": 3},
			{"stone": 4, "wood": 4},
			{"stone": 5, "wood": 5},
		],
	},
	"manual_speed": {
		"level": 0,
		"values": [9, 8, 7, 6, 5, 4],
		"costs": [
			{"stone": 1, "wood": 1},
			{"stone": 2, "wood": 2},
			{"stone": 3, "wood": 3},
			{"stone": 4, "wood": 4},
			{"stone": 5, "wood": 5},
		]
	}
}

func get_cost(type: String) -> Dictionary:
	var lvl = upgrades[type]["level"]
	var costs = upgrades[type]["costs"]
	
	if lvl > costs.size():
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
