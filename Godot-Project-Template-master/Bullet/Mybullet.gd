extends KinematicBody2D


func _ready():
	pass

func _physics_process(delta):
	position.y -= 10
	if position.y  < -100:
		queue_free()

func _on_Area2D_body_entered(body):
	if body.get_parent().name == "Enemies":
		body.queue_free()
		get_node("/root/Game/HUD").update_score(2)
