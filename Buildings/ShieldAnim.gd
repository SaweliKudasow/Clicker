extends Node2D

var offsets = [-1, -1, 1, 1] # цикл смещений
var index := 0

func _ready():
	# создаем таймер на 1 секунду
	var timer = Timer.new()
	timer.wait_time = 1.0 # таймер на 1 сек
	timer.autostart = true # автостарт
	timer.one_shot = false
	add_child(timer) # добавляем его на сцену
	timer.timeout.connect(_on_timer) # запускаем _on_timer при окончании таймера

func _on_timer():
	position.y += offsets[index] # добавляем смещение
	index = (index + 1) % offsets.size()
