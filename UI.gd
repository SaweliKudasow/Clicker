extends Control

@onready var stone = $TextureRect/Stone
@onready var wood = $TextureRect/Wood

var stone_upgrade = 0
var stone_value = 1
var wood_upgrade = 0
var wood_value = 1

func add_stone():
	var value = int(stone.text) # превращаем текст в число
	value += stone_value # добавляем валюту
	stone.text = str(value) # записываем обратно в строку

func add_wood():
	var value = int(wood.text) # превращаем текст в число
	value += wood_value # добавляем валюту
	wood.text = str(value) # записываем обратно в строку

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
