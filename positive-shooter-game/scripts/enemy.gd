extends Area2D

signal was_saved

@export var speed = 300

func _physics_process(delta):
	global_position.x += -speed * delta
func saved():
	emit_signal("was_saved")
	queue_free()


func _on_body_entered(body: Node2D) -> void:
	body.take_damage()
	saved()
