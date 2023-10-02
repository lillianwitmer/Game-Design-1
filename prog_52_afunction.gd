extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func getarea(length, width):
	var area = length * width 
	return area 

func getperim (lenght, width):
	return 2 * lenght + 2 * width 

func sayhi():
	print("Hi.")

func _on_btncalc_pressed():
	sayhi()
	var l = int($txtlen.text)
	var w = int($txtwid.text)
	var a = getarea(l , w)
	var p = getperim (l , w)
	$lblout.text = "Area: %d\nPerimeter: %d" % [a, p]

func _on_btnexit_pressed():
	get_tree().quit()


func _on_btnclear_pressed():
	$txtwid.text = ""
	$txtlen.text = ""
	$lblout.text = ""


