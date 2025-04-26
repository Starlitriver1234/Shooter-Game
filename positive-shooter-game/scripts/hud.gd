extends Control

@onready var score = $Score
@onready var lives_left = $LivesLeft

func set_score_label(new_score):
	score.text = "Score: " + str(new_score)

func set_lives(ammount):
	lives_left.text = str(ammount)
