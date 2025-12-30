extends Node

var upgrades := {
	"StoneFactory": {
		"manual_gain": {
			"level": 0,
			"values": [1, 2, 4, 7, 11, 16, 22, 29, 37, 46, 56],
			"costs": [
				{"stone": 3,   "wood": 2},
				{"stone": 10,  "wood": 5},
				{"stone": 30,  "wood": 15},
				{"stone": 70,  "wood": 40},
				{"stone": 150, "wood": 90},
				{"stone": 300, "wood": 180},
				{"stone": 550, "wood": 350},
				{"stone": 900, "wood": 600},
				{"stone": 1400,"wood": 950},
				{"stone": 2100,"wood": 1500},
			],
		},
		"manual_speed": {
			"level": 0,
			"values": [9.0, 8.2, 7.5, 6.9, 6.4, 6.0, 5.7, 5.4, 5.2, 5.0, 4.8],
			"costs": [
				{"stone": 5,   "wood": 3},
				{"stone": 15,  "wood": 10},
				{"stone": 40,  "wood": 30},
				{"stone": 90,  "wood": 70},
				{"stone": 180, "wood": 150},
				{"stone": 350, "wood": 300},
				{"stone": 600, "wood": 550},
				{"stone": 950, "wood": 900},
				{"stone": 1500,"wood": 1450},
				{"stone": 2300,"wood": 2200},
			]
		}
	},
	"WoodFactory": {
		"manual_gain": {
			"level": 0,
			"values": [1, 2, 4, 7, 11, 16, 22, 29, 37, 46, 56],
			"costs": [
				{"stone": 3,   "wood": 2},
				{"stone": 10,  "wood": 5},
				{"stone": 30,  "wood": 15},
				{"stone": 70,  "wood": 40},
				{"stone": 150, "wood": 90},
				{"stone": 300, "wood": 180},
				{"stone": 550, "wood": 350},
				{"stone": 900, "wood": 600},
				{"stone": 1400,"wood": 950},
				{"stone": 2100,"wood": 1500},
			],
		},
		"manual_speed": {
			"level": 0,
			"values": [9.0, 8.2, 7.5, 6.9, 6.4, 6.0, 5.7, 5.4, 5.2, 5.0, 4.8],
			"costs": [
				{"stone": 5,   "wood": 3},
				{"stone": 15,  "wood": 10},
				{"stone": 40,  "wood": 30},
				{"stone": 90,  "wood": 70},
				{"stone": 180, "wood": 150},
				{"stone": 350, "wood": 300},
				{"stone": 600, "wood": 550},
				{"stone": 950, "wood": 900},
				{"stone": 1500,"wood": 1450},
				{"stone": 2300,"wood": 2200},
			]
		}
	},
	"Castle": {
		"auto_gain": {
			"level": 0,
			"values": [1, 3, 6, 10, 15, 21, 28, 36, 45, 55, 66],
			"costs": [
				{"stone": 50, "wood": 50},
				{"stone": 150, "wood": 120},
				{"stone": 350, "wood": 300},
				{"stone": 700, "wood": 650},
				{"stone": 1300, "wood": 1200},
				{"stone": 2200, "wood": 2100},
				{"stone": 3500, "wood": 3400},
				{"stone": 5200, "wood": 5000},
				{"stone": 7600, "wood": 7300},
				{"stone": 10500, "wood": 10000},
			],
		},
		"auto_speed": {
			"level": 0,
			"values": [9.0, 8.0, 7.2, 6.5, 6.0, 5.6, 5.3, 5.1, 4.9, 4.7, 4.5],
			"costs": [
				{"stone": 100,  "wood": 100},
				{"stone": 300,  "wood": 280},
				{"stone": 650,  "wood": 620},
				{"stone": 1200, "wood": 1150},
				{"stone": 2000, "wood": 1900},
				{"stone": 3200, "wood": 3100},
				{"stone": 4800, "wood": 4700},
				{"stone": 7000, "wood": 6900},
				{"stone": 9800, "wood": 9600},
				{"stone": 13000,"wood": 12500},
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
