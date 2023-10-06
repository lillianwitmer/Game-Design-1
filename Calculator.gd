extends Control
var sum = 0

func add(num1 , num2):
	sum = num1 + num2
	return num1 + num2
func minus(num1 , num2):
	sum = num1-num2
	return num1-num2
func mul(num1 , num2):
	sum = num1*num2
	return
func div(num1 , num2):
	sum = num1/num2
	return
func power(num1 , num2):
	sum = num1**num2
	return
func MOD(num1 , num2):
	sum = abs(num1)/abs(num2)
	return

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_mod_pressed():
	var num1 = int($num1.text)
	var num2 = int($num2.text)
	MOD(num1, num2)
	$lblout.text = "Answer is %d" % [sum]


func _on_pow_pressed():
	var num1 = int($num1.text)
	var num2 = int($num2.text)
	power(num1, num2)
	$lblout.text = "Answer is %d" % [sum]


func _on_div_pressed():
	var num1 = int($num1.text)
	var num2 = int($num2.text)
	div(num1, num2)
	$lblout.text = "Answer is %d" % [sum]


func _on_mul_pressed():
	var num1 = int($num1.text)
	var num2 = int($num2.text)
	mul(num1, num2)
	$lblout.text = "Answer is %d" % [sum]


func _on_min_pressed():
	var num1 = int($num1.text)
	var num2 = int($num2.text)
	minus(num1, num2)
	$lblout.text = "Answer is %d" % [sum]

func _on_add_pressed():
	var num1 = int($num1.text)
	var num2 = int($num2.text)
	add(num1, num2)
	$lblout.text = "Answer is %d" % [sum]
