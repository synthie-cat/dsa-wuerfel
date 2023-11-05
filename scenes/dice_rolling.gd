extends Control

var heldenwerte = preload("res://global/heldenwerte.gd")
var heldenwerte_instanz = null

func _ready():
	heldenwerte_instanz = heldenwerte.new()
	$Werte/MU.text = "MU: " + str(heldenwerte_instanz.mut)
	$Werte/KL.text = "KL: " + str(heldenwerte_instanz.klugheit)
	$Werte/IN.text = "IN: " + str(heldenwerte_instanz.intuition)
	$Werte/CH.text = "CH: " + str(heldenwerte_instanz.charisma)
	$Werte/FF.text = "FF: " + str(heldenwerte_instanz.fingerfertigkeit)
	$Werte/GE.text = "GE: " + str(heldenwerte_instanz.geschicklichkeit)
	$Werte/KO.text = "KO: " + str(heldenwerte_instanz.konstitution)
	$Werte/KK.text = "KK: " + str(heldenwerte_instanz.koerperkraft)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
