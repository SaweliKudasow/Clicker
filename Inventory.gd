extends Control

@onready var stone = $TextureRect/Stone
@onready var wood = $TextureRect/Wood

var stone_upgrade = 0
var stone_value = 1
var wood_upgrade = 0
var wood_value = 1

func upgrade_stone():
	var upgrade_values = [2, 3, 4, 5] # массив с валютами
	if stone_upgrade < upgrade_values.size():
		stone_upgrade += 1
		stone_value = upgrade_values[stone_upgrade - 1]
	else:
		print("max")

func upgrade_wood():
	var upgrade_values = [2, 3, 4, 5]
	if wood_upgrade < upgrade_values.size():
		wood_upgrade += 1
		wood_value = upgrade_values[wood_upgrade - 1]
	else:
		print("max")

func add_value(node):
	var building_type
	if node.name == "StoneFactory":
		building_type = stone
	if node.name == "WoodFactory":
		building_type = wood
	
	var gain = Upgrades.get_value("manual_gain") # текущий мануальный доход
	
	var value = int(building_type.text) # превращаем текст в число
	value += gain # добавляем валюту
	building_type.text = str(value) # записываем обратно в строку
