extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Panel/slider.value = $phys_ball.gravity_scale


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _input(event):
	if event is InputEventMouseButton and event.pressed:
		var nball = preload("res://phys_ball.tscn").instantiate()
		nball.position = event.position 
		add_child(nball)


func _on_slider_value_changed(value):
		for child in get_children(): 
			if child is RigidBody2D and child.name == "phys_ball" :
				child.gravity_scale = value


func _on_button_pressed():
	for child in get_children():
		if child is RigidBody2D  and child.name == "phys_ball":
			child.apply_central_impulse(Vector2.RIGHT * 500)



	
