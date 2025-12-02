extends TextureButton

# @onready var button = $"."
@onready var upgrade_cost := $"../UpgradeCost"

func _ready():
	upgrade_cost.hide()

func _on_mouse_entered():
	upgrade_cost.show()

func _on_mouse_exited():
	upgrade_cost.hide()
