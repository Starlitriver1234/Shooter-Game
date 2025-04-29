extends Area2D

signal was_saved

@export var speed = 300
@export var duration: float = 1.0

var new_ghost: Texture2D
var _sprite: Sprite2D


func _ready() -> void:
	new_ghost = load("res://New Assets/Happy Ghost.png")
	for child in get_children():
		if child is Sprite2D:
			_sprite = child
			break

func _physics_process(delta):
	global_position.x += -speed * delta


func saved():
	if _sprite and new_ghost:
		_sprite.texture = new_ghost
		call_deferred("delayed")
	else:
		queue_free()


func delayed():
	await get_tree().create_timer(duration).timeout
	emit_signal("was_saved")
	queue_free()
	

func _on_body_entered(body: Node2D) -> void:
	body.take_damage()
	saved()
