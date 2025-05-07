extends Node2D

var lives = 4
var score = 0
@onready var player = $Player
@onready var hud = $UI/HUD
@onready var ui = $UI
@onready var enemy_hit_sound = $EnemyHitSound
@onready var player_hit_sound = $PlayerHitSound

var gameoverscene = preload("res://scenes/game_over_screen.tscn")

func _ready():
	hud.set_score_label(score)
	hud.set_lives(lives)

func _on_deathzone_area_entered(area: Area2D) -> void:
	area.failed_to_save()


func _on_player_took_damage() -> void:
	player_hit_sound.play()
	lives = lives - 1
	hud.set_lives(lives)
	if(lives == 0):
		player.end()
		score = score + 100
		await get_tree().create_timer(0.7).timeout
		var gos = gameoverscene.instantiate()
		gos.set_score(score)
		ui.add_child(gos)
	


func _on_enemy_spawner_enemy_spawned(enemy_instance: Variant) -> void:
	enemy_instance.connect("was_saved", _on_enemy_saved)
	add_child(enemy_instance)

func _on_enemy_saved():
	score = score + 100;
	hud.set_score_label(score)
	enemy_hit_sound.play()
	


func _on_enemy_spawner_path_enemy_spawned(path_enemy_instance: Variant) -> void:
	add_child(path_enemy_instance)
	path_enemy_instance.enemy.connect("was_saved", _on_enemy_saved)
