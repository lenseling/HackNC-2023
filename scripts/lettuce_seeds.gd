extends StaticBody2D

var selected = false
var seed_type = 3 # lettuce
var originalPosition

func _ready():
	originalPosition = position  # Store the original position

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				# When the left mouse button is pressed, enable following the mouse.
				selected = true
				follow_mouse()
			else:
				# When the left mouse button is released, stop following the mouse.
				selected = false
				return_to_original_position()

func follow_mouse():
	if selected:
		var mouse_position = get_global_mouse_position()
		position = mouse_position

func return_to_original_position():
	position = originalPosition

func _physics_process(delta):
	follow_mouse()
