extends Control

@onready var menu = $"."

func _ready():
	menu.hide()

func _on_mouse_entered():
	menu.show()

func _on_mouse_exited():
	menu.hide()
