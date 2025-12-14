extends Control

@onready var label = $Label
@onready var original_position = label.position
@onready var original_alpha = label.modulate.a
@onready var gain_sound = $"../../GainSound"

func _ready():
	$Label.hide()

func start_anim(building, type):
	var value = Upgrades.get_value(building, type)
	$Label.text = "+" + str(value)
	$Label.show()
	
	gain_sound.stop()
	gain_sound.play()
	
	for i in 7:
		label.position.y -= 1
		label.modulate.a -= 0.10
		await get_tree().create_timer(0.2).timeout
	
	label.hide()
	label.position = original_position
	label.modulate.a = original_alpha
