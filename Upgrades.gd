extends Node

var upgrades := {
	"StoneFactory": {
		"manual_gain": {
			"level": 0,
			"values": [1, 2, 4, 7, 11, 16, 22, 29, 37, 46, 56],
			"costs": [
				{"stone": 2,   "wood": 1},
				{"stone": 7,   "wood": 4},
				{"stone": 20,  "wood": 10},
				{"stone": 45,  "wood": 28},
				{"stone": 100, "wood": 65},
				{"stone": 200, "wood": 130},
				{"stone": 380, "wood": 240},
				{"stone": 620, "wood": 420},
				{"stone": 950, "wood": 650},
				{"stone": 1400,"wood": 1000},
			],
		},
		"manual_speed": {
			"level": 0,
			"values": [7.2, 6.5, 5.9, 5.4, 5.0, 4.6, 4.3, 4.0, 3.8, 3.6, 3.4],
			"costs": [
				{"stone": 3,   "wood": 2},
				{"stone": 10,  "wood": 7},
				{"stone": 28,  "wood": 20},
				{"stone": 60,  "wood": 50},
				{"stone": 120, "wood": 100},
				{"stone": 240, "wood": 210},
				{"stone": 420, "wood": 380},
				{"stone": 670, "wood": 630},
				{"stone": 1050,"wood": 1000},
				{"stone": 1600,"wood": 1500},
			]
		}
	},
	
	"WoodFactory": {
		"manual_gain": {
			"level": 0,
			"values": [1, 2, 4, 7, 11, 16, 22, 29, 37, 46, 56],
			"costs": [
				{"stone": 2,   "wood": 1},
				{"stone": 7,   "wood": 4},
				{"stone": 20,  "wood": 10},
				{"stone": 45,  "wood": 28},
				{"stone": 100, "wood": 65},
				{"stone": 200, "wood": 130},
				{"stone": 380, "wood": 240},
				{"stone": 620, "wood": 420},
				{"stone": 950, "wood": 650},
				{"stone": 1400,"wood": 1000},
			],
		},
		"manual_speed": {
			"level": 0,
			"values": [7.2, 6.5, 5.9, 5.4, 5.0, 4.6, 4.3, 4.0, 3.8, 3.6, 3.4],
			"costs": [
				{"stone": 3,   "wood": 2},
				{"stone": 10,  "wood": 7},
				{"stone": 28,  "wood": 20},
				{"stone": 60,  "wood": 50},
				{"stone": 120, "wood": 100},
				{"stone": 240, "wood": 210},
				{"stone": 420, "wood": 380},
				{"stone": 670, "wood": 630},
				{"stone": 1050,"wood": 1000},
				{"stone": 1600,"wood": 1500},
			]
		}
	},
	
	"Castle": {
		"auto_gain": {
			"level": 0,
			"values": [1, 3, 6, 10, 15, 21, 28, 36, 45, 55, 66],
			"costs": [
				{"stone": 25,   "wood": 25},
				{"stone": 75,   "wood": 65},
				{"stone": 170,  "wood": 150},
				{"stone": 330,  "wood": 310},
				{"stone": 600,  "wood": 560},
				{"stone": 1000, "wood": 960},
				{"stone": 1500, "wood": 1450},  # было 1600 / 1550
				{"stone": 2000, "wood": 1900},  # было 2400 / 2250
				{"stone": 2800, "wood": 2600},  # было 3600 / 3400
				{"stone": 3800, "wood": 3600},  # было 5200 / 4900
			],
		},
		"auto_speed": {
			"level": 0,
			"values": [7.2, 6.5, 5.9, 5.4, 5.0, 4.6, 4.3, 4.0, 3.8, 3.6, 3.4],
			"costs": [
				{"stone": 50,   "wood": 50},
				{"stone": 150,  "wood": 140},
				{"stone": 320,  "wood": 300},
				{"stone": 600,  "wood": 580},
				{"stone": 1000, "wood": 950},
				{"stone": 1600, "wood": 1550},
				{"stone": 2100, "wood": 2000},  # было 2400 / 2300
				{"stone": 2900, "wood": 2800},  # было 3600 / 3500
				{"stone": 4000, "wood": 3800},  # было 5200 / 5000
				{"stone": 5500, "wood": 5200},  # было 7200 / 6900
			],
		}
	},
}

func get_default_upgrades():
	return {
		"StoneFactory": {
			"manual_gain": {
				"level": 0,
				"values": [1, 2, 4, 7, 11, 16, 22, 29, 37, 46, 56],
				"costs": [
					{"stone": 2,   "wood": 1},
					{"stone": 7,   "wood": 4},
					{"stone": 20,  "wood": 10},
					{"stone": 45,  "wood": 28},
					{"stone": 100, "wood": 65},
					{"stone": 200, "wood": 130},
					{"stone": 380, "wood": 240},
					{"stone": 620, "wood": 420},
					{"stone": 950, "wood": 650},
					{"stone": 1400,"wood": 1000},
				],
			},
			"manual_speed": {
				"level": 0,
				"values": [7.2, 6.5, 5.9, 5.4, 5.0, 4.6, 4.3, 4.0, 3.8, 3.6, 3.4],
				"costs": [
					{"stone": 3,   "wood": 2},
					{"stone": 10,  "wood": 7},
					{"stone": 28,  "wood": 20},
					{"stone": 60,  "wood": 50},
					{"stone": 120, "wood": 100},
					{"stone": 240, "wood": 210},
					{"stone": 420, "wood": 380},
					{"stone": 670, "wood": 630},
					{"stone": 1050,"wood": 1000},
					{"stone": 1600,"wood": 1500},
				]
			}
		},
		
		"WoodFactory": {
			"manual_gain": {
				"level": 0,
				"values": [1, 2, 4, 7, 11, 16, 22, 29, 37, 46, 56],
				"costs": [
					{"stone": 2,   "wood": 1},
					{"stone": 7,   "wood": 4},
					{"stone": 20,  "wood": 10},
					{"stone": 45,  "wood": 28},
					{"stone": 100, "wood": 65},
					{"stone": 200, "wood": 130},
					{"stone": 380, "wood": 240},
					{"stone": 620, "wood": 420},
					{"stone": 950, "wood": 650},
					{"stone": 1400,"wood": 1000},
				],
			},
			"manual_speed": {
				"level": 0,
				"values": [7.2, 6.5, 5.9, 5.4, 5.0, 4.6, 4.3, 4.0, 3.8, 3.6, 3.4],
				"costs": [
					{"stone": 3,   "wood": 2},
					{"stone": 10,  "wood": 7},
					{"stone": 28,  "wood": 20},
					{"stone": 60,  "wood": 50},
					{"stone": 120, "wood": 100},
					{"stone": 240, "wood": 210},
					{"stone": 420, "wood": 380},
					{"stone": 670, "wood": 630},
					{"stone": 1050,"wood": 1000},
					{"stone": 1600,"wood": 1500},
				]
			}
		},
		
		"Castle": {
			"auto_gain": {
				"level": 0,
				"values": [1, 3, 6, 10, 15, 21, 28, 36, 45, 55, 66],
				"costs": [
					{"stone": 25,   "wood": 25},
					{"stone": 75,   "wood": 65},
					{"stone": 170,  "wood": 150},
					{"stone": 330,  "wood": 310},
					{"stone": 600,  "wood": 560},
					{"stone": 1000, "wood": 960},
					{"stone": 1500, "wood": 1450},  # было 1600 / 1550
					{"stone": 2000, "wood": 1900},  # было 2400 / 2250
					{"stone": 2800, "wood": 2600},  # было 3600 / 3400
					{"stone": 3800, "wood": 3600},  # было 5200 / 4900
				],
			},
			"auto_speed": {
				"level": 0,
				"values": [7.2, 6.5, 5.9, 5.4, 5.0, 4.6, 4.3, 4.0, 3.8, 3.6, 3.4],
				"costs": [
					{"stone": 50,   "wood": 50},
					{"stone": 150,  "wood": 140},
					{"stone": 320,  "wood": 300},
					{"stone": 600,  "wood": 580},
					{"stone": 1000, "wood": 950},
					{"stone": 1600, "wood": 1550},
					{"stone": 2100, "wood": 2000},  # было 2400 / 2300
					{"stone": 2900, "wood": 2800},  # было 3600 / 3500
					{"stone": 4000, "wood": 3800},  # было 5200 / 5000
					{"stone": 5500, "wood": 5200},  # было 7200 / 6900
				],
			}
		},
	}

var welcome_messages = true

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
