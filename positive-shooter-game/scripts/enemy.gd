extends Area2D

signal was_saved

@export var speed = 300
@export var duration: float = 1.0

var new_ghost: Texture2D
var _sprite: Sprite2D
var ghost_saved: bool = false

func _ready() -> void:
	new_ghost = load("res://New Assets/Happy Ghost.png")
	for child in get_children():
		if child is Sprite2D:
			_sprite = child


func _physics_process(delta):
	global_position.x += -speed * delta


func saved():
	if ghost_saved:
		return
	ghost_saved = true
	if _sprite and new_ghost:
		_sprite.texture = new_ghost
		emit_signal("was_saved")
		call_deferred("delayed")
	else:
		queue_free()

func failed_to_save():
	queue_free()


func delayed():
	await get_tree().create_timer(duration).timeout
	queue_free()
	

func _on_body_entered(body: Node2D) -> void:
	if not ghost_saved and "take_damage" in body:
		body.take_damage()
		saved()
