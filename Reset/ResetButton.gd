extends Control

@onready var fade_out := $"../FadeOut"
@export var is_end: bool

func _ready():
	if is_end:
		return
	hide_menu()
	$TextureButton.show()

func _on_texture_button_pressed():
	if is_end:
		GameData.reset()
		get_tree().reload_current_scene()
		return
	play_sound()
	show_menu()

func _on_no_button_pressed():
	play_sound()
	hide_menu()

func _on_yes_button_pressed():
	fade_out.fade_in()
	await get_tree().create_timer(2.0).timeout
	
	GameData.reset()
	get_tree().reload_current_scene()

func hide_menu():
	if is_end:
		return
	$Question.hide()
	$ButtonField.hide()
	$TextureButton.show()

func show_menu():
	if is_end:
		return
	$Question.show()
	$ButtonField.show()
	$TextureButton.hide()

func play_sound():
	$"../ClickSound".stop()
	$"../ClickSound".play()
