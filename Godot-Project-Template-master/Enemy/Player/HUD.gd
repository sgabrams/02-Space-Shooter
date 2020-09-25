extends Node2D

func _ready():
	update_score(0)

var score = 0
func update_score(s):
	score += s 
	$Score.text = "score: " + str(score)
	
