extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_btncalc_pressed():
	$list.add_item("Number     Cube     Cube Root")
	for num in range(-25 , 0):
		var cube = num**3 
		var cuberoot = (abs(num)**0.333)*-1
		var line = " %d     %d      %.4f" % [num, cube, cuberoot]
		$list.add_item(line)
	for num in range(1 , 25):
		var cube = num**3 
		var cuberoot = num**0.333
		var line = " %d     %d      %.4f" % [num, cube, cuberoot]
		$list.add_item(line)
	

func _on_btnexit_pressed():
	get_tree().quit()


func _on_btnclear_pressed():
	$list.clear()
