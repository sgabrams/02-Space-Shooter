extends Node2D

onready var Enemy = load("res://Enemy/Enemy.tscn")
export var spawn_probability = 0.3
export var max_count = 3
onready var w = int(get_viewport_rect().size.x)

func _ready():
	randomize()


func _on_Timer_timeout():
	print("timer")
	if randf() < spawn_probability and get_child_count() < max_count + 1:
		var enemy = Enemy. instance()
		enemy.position = Vector2(randi() % w, -100)
		get_node("/root/Game/Enemies").add_child(enemy)
	
	
