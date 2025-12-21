extends Control

@onready var fade_out = $"../FadeOut"

func _ready():
	hide_menu()
	$TextureButton.show()

func _on_texture_button_pressed():
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
	$Question.hide()
	$ButtonField.hide()
	$TextureButton.show()

func show_menu():
	$Question.show()
	$ButtonField.show()
	$TextureButton.hide()

func play_sound():
	$"../ClickSound".stop()
	$"../ClickSound".play()
