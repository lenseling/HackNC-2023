extends Control

@onready var guide = $Popup

func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://scenes/main.tscn")

func _on_guide_button_pressed():
	guide.show()

func _on_quit_button_pressed():
	get_tree().quit()

func _on_x_pressed():
	guide.hide()
