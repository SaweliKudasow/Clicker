extends Label

var original_color: Color

func _ready():
	original_color = get_theme_color("font_color")

func _on_button_down():
	self.add_theme_color_override("font_color", Color.BLACK)

func _on_button_up():
	self.add_theme_color_override("font_color", Color.WHITE)

func _on_button_mouse_entered():
	self.add_theme_color_override("font_color", Color.WHITE)

func _on_button_mouse_exited():
	add_theme_color_override("font_color", original_color)
