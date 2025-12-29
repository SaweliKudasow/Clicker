extends Control

@onready var texture = $TextureRect
@onready var game_over := $"../GameOver"
@onready var cursor := $"../Cursor"

func _ready():
	self.show()
	$Label.hide()
	$ResetButton.hide()
	if game_over.all_upgrades_max_level(Upgrades.upgrades):
		end_ui()
	else:
		fade_out(2.5)

func fade_out(duration := 1.0):
	var tween := get_tree().create_tween()
	tween.tween_property(texture, "modulate:a", 0.0, duration)

func fade_in(duration := 1.0):
	var tween := get_tree().create_tween()
	tween.tween_property(texture, "modulate:a", 1.0, duration)
	
	if game_over.all_upgrades_max_level(Upgrades.upgrades):
		end_ui()

func end_ui(duration := 1.0):
	$Label.modulate.a = 0.0
	$ResetButton.modulate.a = 0.0
	
	$Label.show()
	$ResetButton.show()
	
	var tween1 := get_tree().create_tween()
	tween1.tween_property($Label, "modulate:a", 1.0, duration)
	tween1.parallel().tween_property($ResetButton, "modulate:a", 1.0, duration)
	
	cursor.z_index = 3
