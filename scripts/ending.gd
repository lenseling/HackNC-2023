extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Stats.text = "Profit: " + str(Global.money)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_texture_button_pressed():
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
	Global.money = 20
	Global.total_money = 20
	Global.sustainability = 20
	
