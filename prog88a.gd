extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_btnexit_pressed():
	get_tree().quit()


func _on_btncalc_pressed():
	var num1 = int($txtnum1.text)
	var num2 = int($txtnum2.text)
	var sum = num1 + num2
	var dif = num1 - num2
	var product = num1 * num2 
	var avrg = (num1 + num2) / 2
	var abs = abs(dif)
	var max = 0
	var min = 0
	if num1 > num2:
		max = num1
	else: 
		max = num2
	if max == num1:
		min = num2
	else:
		min = num1
	$lblout.text =  "Sum = " + str(sum) + "\nDifference = "+ str(dif) +\
	"\nProduct = " + str(product) + "\nAverage = " +\
	 str(avrg) + "\nMax = " + str(max) + "\nMinimum = " + str(min)


func _on_btnclear_pressed():
	$lblout.text = ""
	$txtnum1.text = ""
	$txtnum2.text = "" 
