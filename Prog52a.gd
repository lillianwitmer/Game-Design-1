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
	$txtlen.text=""
	$txtwid.text=""
	$lblout.text=""

func _on_btncalc_pressed():
	var len = int($txtlen.text)
	var wid = int($txtwid.text)
	var area = len * wid 
	var perim = 2 * len + wid * 2
	$lblout.text = "Area: " + str(area) + \
	"\nPerimeter:" + str(perim)
