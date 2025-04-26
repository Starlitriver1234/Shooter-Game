extends Node2D

var lives = 4
var score = 0
@onready var player = $Player

func _on_deathzone_area_entered(area: Area2D) -> void:
	area.saved()


func _on_player_took_damage() -> void:
	lives = lives - 1
	if(lives == 0):
		player.end()
	


func _on_enemy_spawner_enemy_spawned(enemy_instance: Variant) -> void:
	enemy_instance.connect("was_saved", _on_enemy_saved)
	add_child(enemy_instance)

func _on_enemy_saved():
	score = score + 100;
	
