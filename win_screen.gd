extends Control


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://maps/screens/Level_select_screen.tscn")


func _on_home_pressed() -> void:
	get_tree().change_scene_to_file("res://maps/screens/Title_Screen.tscn")
