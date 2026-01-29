extends Area2D

@export var is_player_inside := false

func _on_body_entered(body):
	if body.name == "player_light":
		is_player_inside = true
		get_parent().get_node("GameManager").check_win()

func _on_body_exited(body):
	if body.name == "player_light":
		is_player_inside = false
