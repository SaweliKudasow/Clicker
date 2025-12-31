extends Control

@onready var messages := [$Control/Label, $Control/Label2, $Control/Label3]
@onready var fadeOut := $"../FadeOut"

var current_index := 0

func _ready():
	GameData.load_messages()
	if Upgrades.welcome_messages:
		for i in range(messages.size()):
			messages[i].visible = (i == current_index)
	else:
		self.hide()

func _on_next_pressed():
	play_sound()
	messages[current_index].hide()
	
	current_index += 1
	
	if current_index >= messages.size():
		self.hide()
		Upgrades.welcome_messages = false
		GameData.save_messages()
		return
	
	messages[current_index].show()

func _on_skip_pressed():
	play_sound()
	Upgrades.welcome_messages = false
	GameData.save_messages()
	self.hide()

func play_sound():
	$"../ClickSound".stop()
	$"../ClickSound".play()
