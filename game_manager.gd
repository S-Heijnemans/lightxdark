extends Node

@onready var door_dark = get_parent().get_node("door_dark")
@onready var door_light = get_parent().get_node("door_light")

func check_win():
	if door_dark.is_player_inside and door_light.is_player_inside:
		win_game()

func win_game():
	print("YOU WIN!")
	get_tree().change_scene_to_file("")
