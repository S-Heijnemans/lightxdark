extends Node

var door_dark = false
var door_light = false
#
#func _ready():
	## wait one frame so the scene is loaded
	#await get_tree().process_frame
	#
	#var scene = get_tree().current_scene
	##door_dark = scene.get_node("dark_door")
	##door_light = scene.get_node("light_door")
#
#func check_win():
	#print("Checking win:",
		##door_light.is_player_inside,
		##door_dark.is_player_inside
	#)
	#
	##if door_dark.is_player_inside and door_light.is_player_inside:
		##win_game()
##
##func win_game():
	##print("YOU WIN!")
	##get_tree().change_scene_to_file("res://maps/Test_Map_main.tscn")
