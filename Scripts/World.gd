extends Node2D

onready var Camera = $Camera

var _start_position
var _start_rotation
var _trauma
var _decay_tramua

func _ready():
	_start_position = position
	_trauma = 0.0

func _physics_process(delta):
	if Input.is_action_pressed("Left"):
		get_node("/root/World/Camera").add_trauma(1.0)
	if Input.is_action_pressed("Right"):
		get_node("/root/World/Camera").add_trauma(-1.0)
	if Input.is_action_pressed("Up"):
		get_node("/root/World/Camera")._decay_trauma(1.0)
	if Input.is_action_pressed("Down"):
		get_node("/root/World/Camera")._decay_trauma(-1.0)
		

