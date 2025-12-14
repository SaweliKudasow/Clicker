extends Node

var upgrades := {
	"StoneFactory": {
		"manual_gain": {
			"level": 0,
			"values": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
			"costs": [
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
			],
		},
		"manual_speed": {
			"level": 0,
			"values": [9.0, 8.5, 8.0, 7.5, 7.0, 6.5, 6.0, 5.5, 5.0, 4.5, 4.0],
			"costs": [
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
			]
		}
	},
	"WoodFactory": {
		"manual_gain": {
			"level": 0,
			"values": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
			"costs": [
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
			],
		},
		"manual_speed": {
			"level": 0,
			"values": [9.0, 8.5, 8.0, 7.5, 7.0, 6.5, 6.0, 5.5, 5.0, 4.5, 4.0],
			"costs": [
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
			]
		}
	},
	"Castle": {
		"auto_gain": {
			"level": 0,
			"values": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
			"costs": [
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
			],
		},
		"auto_speed": {
			"level": 0,
			"values": [9.0, 8.5, 8.0, 7.5, 7.0, 6.5, 6.0, 5.5, 5.0, 4.5, 4.0],
			"costs": [
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
				{"stone": 0, "wood": 0},
			]
		}
	},
}

func get_default_upgrades():
	return {
		"StoneFactory": {
			"manual_gain": {
				"level": 0,
				"values": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
				"costs": [
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
				],
			},
			"manual_speed": {
				"level": 0,
				"values": [9.0, 8.5, 8.0, 7.5, 7.0, 6.5, 6.0, 5.5, 5.0, 4.5, 4.0],
				"costs": [
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
				]
			}
		},
		"WoodFactory": {
			"manual_gain": {
				"level": 0,
				"values": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
				"costs": [
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
				],
			},
			"manual_speed": {
				"level": 0,
				"values": [9.0, 8.5, 8.0, 7.5, 7.0, 6.5, 6.0, 5.5, 5.0, 4.5, 4.0],
				"costs": [
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
				]
			}
		},
		"Castle": {
			"auto_gain": {
				"level": 0,
				"values": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
				"costs": [
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
				],
			},
			"auto_speed": {
				"level": 0,
				"values": [9.0, 8.5, 8.0, 7.5, 7.0, 6.5, 6.0, 5.5, 5.0, 4.5, 4.0],
				"costs": [
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
					{"stone": 0, "wood": 0},
				]
			}
		},
	}


func get_cost(building: String, type: String) -> Dictionary:
	var lvl = upgrades[building][type]["level"]
	var costs = upgrades[building][type]["costs"]
	
	if lvl >= costs.size():
		return {"stone": -1, "wood": -1}
	
	return costs[lvl]

func get_value(building: String, type: String):
	var lvl = upgrades[building][type]["level"]
	var values = upgrades[building][type]["values"]
	
	return values[lvl]

func get_level(building: String, type:String) -> int:
	return upgrades[building][type]["level"]

func upgrade(building: String, type: String):
	upgrades[building][type]["level"] += 1
