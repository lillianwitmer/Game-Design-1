extends Control
var num1 = int($num1.text)
var num2 = int($num2.text)

func add(num1 , num2):
	num1 + num2
	return num1 + num2
func minus(num1 , num2):
	num1-num2
	return num1-num2
func mul(num1 , num2):
	num1*num2
	return
func div(num1 , num2):
	num1/num2
	return
func power(num1 , num2):
	num1**num2
	return
func MOD(num1 , num2):
	abs(num1)/abs(num2)
	return

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
