extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_btnexit_pressed():
	get_tree().quit()
	pass # Replace with function body.


func _on_btn_calc_pressed():
	var num1 = int($txt1.text)
	var num2 = int($txt2.text)
	
