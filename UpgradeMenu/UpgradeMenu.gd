extends Control

@onready var menu = $"."
@onready var cursor_inside := false
@export var bar_type1: Control
@export var bar_type2: Control

func _ready():
	menu.hide()

func _on_mouse_entered():
	# menu.show()
	cursor_inside = true

func _on_mouse_exited():
	cursor_inside = false
	menu.hide()

func update_bar():
	var up = false
	bar_type1.update(up)
	bar_type2.update(up)
