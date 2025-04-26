extends Node2D

var lives = 4
@onready var player = $Player

func _on_deathzone_area_entered(area: Area2D) -> void:
	area.saved()


func _on_player_took_damage() -> void:
	lives = lives - 1
	if(lives == 0):
		player.end()
	
