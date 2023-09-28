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
	$list.clear()


func _on_btncalc_pressed():
	for num in range(3 ,9669):
		var sum = num + num
		var line = "The sum of the multiples of 3, from 3 to 9669 is %d" % [ sum]
		$list.add_item(line)
