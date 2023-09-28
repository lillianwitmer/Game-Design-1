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
	var num3 = int($txt3.text)
	var num4 = int($txt4.text)
	var sum = num1 + num2 + num3 + num4
	var average = sum/4
	$lblout.text = "the sum of the four number is " + str(sum) + "\nthe average of the four numbers is " + str(average)


func _on_btn_clear_pressed():
	$lblout.text =""
	$txt1.text = ""
	$txt2.text = ""
	$txt3.text = ""
	$txt4.text = ""
