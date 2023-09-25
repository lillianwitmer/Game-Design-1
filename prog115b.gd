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
	$item.clear


func _on_btncalc_pressed():
	for num in range(2, 36):
		var 
	
