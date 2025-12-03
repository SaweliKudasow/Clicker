extends TextureButton

@onready var button := $"."
@onready var upgrade_cost := $"../UpgradeCost"
@onready var inventory := $"../../../Inventory"
@onready var button_type

func _ready():
	upgrade_cost.hide()

func _on_mouse_entered():
	upgrade_cost.show()
	check_button_type()

func _on_mouse_exited():
	upgrade_cost.hide()

func check_button_type():
	if button.name == "ManualGainButton":
		button_type = "manual_gain"
	if button.name == "ManualSpeedButton":
		button_type = "manual_speed"
	upgrade_cost.show_cost(button_type)

func _on_pressed():
	var cost = Upgrades.get_cost(button_type)
	
	if cost["wood"] == -1:
		print("MAX LEVEL")
		return
	
	var stone_cost = int(inventory.stone.text)
	var wood_cost = int(inventory.wood.text)
	
	if stone_cost >= cost["stone"] and wood_cost >= cost["wood"]:
		stone_cost -= cost["stone"]
		wood_cost -= cost["wood"]
		
		inventory.stone.text = str(stone_cost)
		inventory.wood.text = str(wood_cost)
		
		Upgrades.upgrade(button_type)
		
		print("New Level!:", Upgrades.get_level(button_type))
	else:
		print("Not enough materials")
