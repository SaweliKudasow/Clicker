extends TextureButton

@onready var button := $"."
@onready var upgrade_cost := $"../UpgradeCost"
@onready var inventory := $"../../../Inventory"
@onready var button_type
@onready var is_max = false
@export var update_bar: Control

func _ready():
	upgrade_cost.hide()

func _on_mouse_entered():
	if not is_max:
		upgrade_cost.show()
	check_button_type()
	#var up = false
	#update_bar.update(up)

func _on_mouse_exited():
	upgrade_cost.hide()

func check_button_type():
	if button.name == "ManualGainButton":
		button_type = "manual_gain"
	if button.name == "ManualSpeedButton":
		button_type = "manual_speed"
	if button.name == "AutoGainButton":
		button_type = "auto_gain"
	if button.name == "AutoSpeedButton":
		button_type = "auto_speed"
	upgrade_cost.show_cost(button_type)

func _on_pressed():
	$"../../../ClickSound".stop()
	$"../../../ClickSound".play()
	
	var cost = Upgrades.get_cost(HoveredBuilding.building, button_type)
	
	if cost["stone"] == -1:
		print("MAX LEVEL")
		is_max = true
		upgrade_cost.hide()
		return
	
	var stone_cost = int(inventory.stone.text)
	var wood_cost = int(inventory.wood.text)
	
	if stone_cost >= cost["stone"] and wood_cost >= cost["wood"]:
		stone_cost -= cost["stone"]
		wood_cost -= cost["wood"]
		var up = true
		
		inventory.stone.text = str(stone_cost)
		inventory.wood.text = str(wood_cost)
		
		Upgrades.upgrade(HoveredBuilding.building, button_type)
		
		var level = Upgrades.get_level(HoveredBuilding.building, button_type)
		if level == 10:
			is_max = true
			upgrade_cost.hide()
		
		print("New Level!:", Upgrades.get_level(HoveredBuilding.building, button_type))
		upgrade_cost.show_cost(button_type)
		update_bar.update(up)
		GameData.save_upgrades()
	else:
		print("Not enough materials")
