extends Control

@onready var texture = $TextureRect

func _ready():
	self.show()
	fade_out(2.5)

func fade_out(duration := 1.0):
	var tween := get_tree().create_tween()
	tween.tween_property(texture, "modulate:a", 0.0, duration)

func fade_in(duration := 1.0):
	var tween := get_tree().create_tween()
	tween.tween_property(texture, "modulate:a", 1.0, duration)
