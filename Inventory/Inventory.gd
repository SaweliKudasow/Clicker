extends Control

@onready var stone = $TextureRect/Stone
@onready var wood = $TextureRect/Wood

func _ready():
	GameData.inventory = self
	GameData.load_resources()

func add_value(node):
	var building_type
	if node.name == "StoneFactory":
		building_type = stone
	if node.name == "WoodFactory":
		building_type = wood
	
	var gain = Upgrades.get_value(HoveredBuilding.building, "manual_gain") # текущий мануальный доход
	
	var value = int(building_type.text) # превращаем текст в число
	value += gain # добавляем валюту
	building_type.text = str(value) # записываем обратно в строку
	
	GameData.save_resources()
