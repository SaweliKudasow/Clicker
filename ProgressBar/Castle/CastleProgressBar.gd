extends Control

@onready var duration = Upgrades.get_value("Castle", "auto_speed")
@onready var inventory = $"../../Inventory"

@export var value_anim: Control

@onready var bar := $TextureProgressBar
var tween: Tween

func _ready():
	bar.value = 0
	bar.min_value = 0
	bar.max_value = 100

func _process(_delta):
	var level = Upgrades.get_level("Castle", "auto_gain")
	if level >= 1:
		self.show()
		start_bar()

func start_bar():
	if tween and tween.is_running():
		return # уже работает
	
	duration = Upgrades.get_value("Castle", "auto_speed")
	bar.value = 0
	tween = create_tween()
	tween.tween_property(bar, "value", bar.max_value, duration)
	tween.finished.connect(_on_fill_complete)

func _on_fill_complete():
	#var node = "Castle"
	#inventory.add_value(node)
	var building = "Castle"
	var type = "auto_gain"
	value_anim.start_anim(building, type)
	var gain1 = Upgrades.get_value("Castle", "auto_gain") # текущий автоматический доход
	
	var value1 = int(inventory.stone.text)
	value1 += gain1
	inventory.stone.text = str(value1)
	
	var value2 = int(inventory.wood.text)
	value2 += gain1
	inventory.wood.text = str(value2)
	
	start_bar() # запускаем заново
