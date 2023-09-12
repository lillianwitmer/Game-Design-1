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
	var rad = float($txtrad.text)
	var area = PI * pow(rad, 2) #radius squared
	var circ = 2 * PI * rad
	$lbloutput.text = "Area=" + str(area) + "\nCircumference=" + str(circ)


func _on_btnclear_pressed():
	$lbloutput.text= ""
	$txtrad.text = ""
	pass # Replace with function body.
