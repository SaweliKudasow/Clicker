extends Area2D

@onready var sprite = $Sprite2D
@export var normal_texture: Texture2D
@export var hover_texture: Texture2D
var mouse_over = false

func _ready():
	sprite.texture = normal_texture

func _on_mouse_entered():
	sprite.texture = hover_texture
	mouse_over = true

func _on_mouse_exited():
	sprite.texture = normal_texture
	mouse_over = false
