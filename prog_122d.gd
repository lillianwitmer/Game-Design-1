extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_btnexit_pressed():
	get_tree().quit()



func _on_btnclear_pressed():
	$item.clear()


func _on_btncalc_pressed():
	$item.add_item("  X       Y  ")
	for num in range (-12, 16): 
		var x = num 
		var y = x**6-3*x**5-93*x**4+87*x**3+1596*x**2-1380*x-2800
		var line =  "%d       %d"% [x, y]
		$item.add_item(line)
