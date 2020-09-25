extends KinematicBody2D


func _ready():
	pass

func _physics_process(delta):
	position.y += 10
	if position.y > 700:
		queue_free()

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		body.queue_free()
		
