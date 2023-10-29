extends StaticBody2D

var plant = Global.plantSelected
var plantgrowing = false
var plant_grown = false

func _physics_process(delta):
	if !plantgrowing:
		plant = Global.plantSelected
		if Global.plantSelected == 1: 
			Global.num_pumpkin += 1
		elif Global.plantSelected == 2: 
			Global.num_strawberry += 1
		elif Global.plantSelected == 3: 
			Global.num_lettuce += 1

func _on_Area2D_area_entered(area):
	if !plantgrowing:
		plantgrowing = true
		$growtimer.start()
		$plantAnim.play("planted")
	else:
		print("Plant is already growing here.")

func _on_growtimer_timeout():
	var plantAnim = $plantAnim
	if plantAnim.animation == "planted":
		if plant == 1:
			plantAnim.play("pumpkingrowing")
		elif plant == 2:
			plantAnim.play("strawberrygrowing")
		elif plant == 3:
			plantAnim.play("lettucegrowing")
		$growtimer.start()
	elif plantAnim.frame == 0:
		plantAnim.frame = 1
		plant_grown = true

func _on_area_2d_area_entered(area):
	if !plantgrowing:
		plantgrowing = true
		$growtimer.start()
		$plantAnim.play("planted")
	else:
		print("Plant is already growing here.")
