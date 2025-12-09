extends Control

@onready var label = $Label
@onready var original_position = label.position
@onready var original_alpha = label.modulate.a

func _ready():
	$Label.hide()

func start_anim(type):
	var value = Upgrades.get_value(HoveredBuilding.building, type)
	$Label.text = "+" + str(value)
	$Label.show()
	
	for i in 7:
		label.position.y -= 1
		label.modulate.a -= 0.10
		await get_tree().create_timer(0.2).timeout
	
	label.hide()
	label.position = original_position
	label.modulate.a = original_alpha
