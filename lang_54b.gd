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
	var a = int($txta.text)
	var b = int($txtb.text) 
	var c = int($txtc.text )
	var proot = (-b + sqrt(b**2-4*a*c))/ 2*a
	var nroot = (-b - sqrt(b**2-4*a*c))/ 2*a
	$lblout.text = "Roots are %d and %d" % [proot, nroot]


func _on_btnclear_pressed():
	$lblout.text = ""
	$txta.text = ""
	$txtb.text = ""
	$txtc.text = ""
