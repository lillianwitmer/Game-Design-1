extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_btncalc_pressed():
	var eggs = int($txteggs.text)
	var price = 0.0 
	var cost = 0.0
	var numeggs = eggs * 12
	if eggs > 0 and eggs < 4 : 
		price = 0.50
	elif eggs >= 4 and eggs < 6 :
		price = 0.45
	elif eggs >= 6 and eggs < 11 : 
		price = 0.40 
	elif eggs >= 11 :
		price = 0.30 
	else :
		$lblout.text = "not enough dozens"
	cost = eggs * price
	$lblout.text = "number of eggs purchased: " + str(numeggs) + "\nThe price$%.2f" % cost
