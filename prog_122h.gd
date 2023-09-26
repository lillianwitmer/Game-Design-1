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
	$item.add_item("Number     Square     Square Root     Cube    4ht Root")
	for num in range(1, 20):
		var numsquared = num **2 
		var numsqrt = sqrt(num)
		var numcube = num**3 
		var fourth = num
		var line = "%d     %d     %.4f     %d      %.4f" % [num, numsquared, numsqrt, numcube, fourth]
		$item.add_item(line)
	
	
	
	
