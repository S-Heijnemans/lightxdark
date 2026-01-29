extends Area2D

var is_player_inside := false

func _on_body_entered(body):
	GlobalNode.door_light = true
	if GlobalNode.door_dark && GlobalNode.door_light:
		get_tree().change_scene_to_file("res://maps/Test_Map_main.tscn")
		GlobalNode.door_dark = false
		GlobalNode.door_light = false
	
	#if body.is_in_group("player_light"):
		#is_player_inside = true
		#GlobalNode.check_win()

func _on_body_exited(body):
	if body.is_in_group("player_light"):
		is_player_inside = false
