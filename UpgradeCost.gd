extends Control

@onready var stone_costs_view = $TextureRect/Stone
@onready var wood_costs_view = $TextureRect/Wood

func show_cost(button_type):
	var cost = Upgrades.get_cost(button_type)
	
	var stone_costs = int(stone_costs_view.text)
	var wood_costs = int(wood_costs_view.text)
	
	stone_costs = cost["stone"]
	wood_costs = cost["wood"]
	
	stone_costs_view.text = str(stone_costs)
	wood_costs_view.text = str(wood_costs)
	
	#print(cost, button_type)
	#var stone_value = int(inventory.stone.text)
	#var wood_value = int(inventory.wood.text)
	#print(stone_value, wood_value)
	
	#if stone_value >= cost["stone"] and wood_value >= cost["wood"]:
		#stone_value -= cost["stone"]
		#wood_value -= cost["wood"]
		#
		#Upgrades.upgrade(button_type)
		#print("New Level:", Upgrades.get_level(button_type))
	#else:
		#print("Недостаточно валюты! Нужно:",
		#cost["stone"], "камня и ",
		#cost["wood"], "дерева")
	#
