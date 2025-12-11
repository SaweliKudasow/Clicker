extends Area2D

@onready var sprite = $Sprite2D # изначальный спрайт
@onready var timer = $Timer # таймер
@onready var click_anim = get_node("../ClickAnim") # анимация клика
@onready var inventory = get_node("../Inventory") # инвентарь

@export var is_castle: bool # здание это замок?
@export var normal_texture: Texture2D # обычная текстура
@export var hover_texture: Texture2D # текстура обводки
@export var upgrade_menu: Control # меню апгрейда
@export var progress_bar: Control # прогресс бар

var mouse_over := false # находится ли мышка на здании

func _ready():
	sprite.texture = normal_texture

func _on_mouse_entered():
	sprite.texture = hover_texture
	mouse_over = true
	#if not upgrade_menu.cursor_inside:
	upgrade_menu.show()
	HoveredBuilding.building = self.name
	print(HoveredBuilding.building)
	if not is_castle:
		progress_bar.show()

func _on_mouse_exited():
	sprite.texture = normal_texture
	mouse_over = false
	if not upgrade_menu.cursor_inside:
		upgrade_menu.hide()
	if not is_castle:
		progress_bar.hide()

func _process(_delta):
	if upgrade_menu.cursor_inside:
		upgrade_menu.show()
		_on_mouse_exited()
	
	#var mouse_pos = get_global_mouse_position()
	#
	#if upgrade_menu.visible and upgrade_menu.get_global_rect().has_point(mouse_pos):
		#if mouse_over:
			#_on_mouse_exited()
		#return
	if not HoveredBuilding.building == "Castle":
		var delay = Upgrades.get_value(HoveredBuilding.building, "manual_speed")
		timer.wait_time = delay
	
	# если курсор на здании и зажата лкм начает/останавливает таймер
	if mouse_over == true and Input.is_action_pressed("click_left") and not is_castle:
		if not timer.is_stopped():
			return
		timer.start()
		click_anim.start_anim()
		progress_bar.set_pressed(true)
	else:
		if timer.is_stopped() == false:
			timer.stop()
			click_anim.stop_anim()
			progress_bar.set_pressed(false)

func _on_timer_timeout():
	inventory.add_value(self)
