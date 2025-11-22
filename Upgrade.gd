extends Control

var stone := false
var castle := false
var wood := false

func _ready():
	$".".hide()

func show_upgrade():
	$".".show()
	if stone:
		position.y = 160
		position.x = 90
	if castle:
		position.y = 160
		position.x = 176
	if wood:
		position.y = 160
		position.x = 252

func hide_upgrade():
	$".".hide()
	stone = false
	castle = false
	wood = false
