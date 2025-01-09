extends Node

var score = 0

func _ready():
	Ui.update_score(score)
	Ui.update_high_score()

func add_point():
	score += 100
	Ui.update_score(score)
	print(score)
