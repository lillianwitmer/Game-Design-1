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
	var weight = int($txtweight.text)
	var width = int($txtwidth.text)
	var height = int($txtheight.text)
	var length = int($txtlength.text)
	var size = length * width * height 
	if weight > 27 :
		$lblout.text = "Too Heavy"
	elif size > 100000 :
		$lblout.text = "too large"
	elif weight > 27 and size > 100000:
		$lblout.text = "Too heavy and too big"
