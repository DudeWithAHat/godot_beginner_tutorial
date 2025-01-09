extends CanvasLayer

@onready var score_label: Label = $ScoreLabel
@onready var high_score_label: Label = $HighScoreLabel

var high_score = 0

func update_score(score):
	score_label.text = "Score: " + str(score)
	if score > high_score:
		high_score = score
		update_high_score(high_score)

func update_high_score(high_score = high_score):
	high_score_label.text = "High Score: " + str(high_score)
