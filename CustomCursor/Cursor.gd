extends Node2D

@onready var cursor_sprite := $Sprite2D

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN) # спрятать системный курсор
	cursor_sprite.offset = Vector2(3, 3)

func _process(_delta):
	# позиция мыши в координатах вьюпорта
	cursor_sprite.global_position = get_viewport().get_mouse_position()
	# cursor_sprite.global_position = cursor_sprite.global_position.linear_interpolate(get_viewport().get_mouse_position(), 0.5 * delta)
