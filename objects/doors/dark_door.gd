extends Area2D

var is_player_inside := false

func _on_body_entered(body):
	GlobalNode.door_dark = true
	if GlobalNode.door_light && GlobalNode.door_dark:
		get_tree().change_scene_to_file("res://maps/Test_Map_main.tscn")
		GlobalNode.door_dark = false
		GlobalNode.door_light = false

func _on_body_exited(body):
	if body.is_in_group("player_dark"):
		is_player_inside = false
