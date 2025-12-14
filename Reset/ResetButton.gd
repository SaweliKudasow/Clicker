extends Control

func _on_texture_button_pressed():
	GameData.reset()
	get_tree().reload_current_scene()
