extends Area2D

@export var speed = 4

func _physics_process(delta):
	global_position.x = global_position.x + speed
