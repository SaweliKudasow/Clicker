extends Control

@onready var menu = $"."
@onready var cursor_inside := false

func _ready():
	menu.hide()

func _on_mouse_entered():
	# menu.show()
	cursor_inside = true

func _on_mouse_exited():
	cursor_inside = false
	menu.hide()
