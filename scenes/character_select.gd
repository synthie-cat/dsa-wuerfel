extends Control

var dice_scene = preload("res://scenes/dice_rolling.tscn")
var heldenwerte

func on_valariel_pressed():
	pass

func _on_hesindian_pressed():
	heldenwerte = ['MU: 12 ', 'KL : 15 ', 'IN: 14 ', 'CH : 14', 'FF: 13 ', 'GE: 11 ', 'KO: 11 ', 'KK: 9']
	update_text(heldenwerte)
	change_visibility()

func _on_leomara_pressed():
	heldenwerte = ['MU: 14 ', 'KL : 11 ', 'IN: 13 ', 'CH : 11', 'FF: 10 ', 'GE: 13 ', 'KO: 14 ', 'KK: 14']
	update_text(heldenwerte)
	change_visibility()

func _on_romoxosch_pressed():
	heldenwerte = ['MU: 13 ', 'KL : 10 ', 'IN: 12 ', 'CH : 9', 'FF: 13 ', 'GE: 11 ', 'KO: 15 ', 'KK: 15']
	update_text(heldenwerte)
	change_visibility()

func _on_valariel_pressed():
	heldenwerte = ['MU: 12 ', 'KL : 11 ', 'IN: 14 ', 'CH : 12', 'FF: 14 ', 'GE: 14 ', 'KO: 12 ', 'KK: 11']
	update_text(heldenwerte)
	change_visibility()

func change_visibility():
	visible = false
	$"../DiceRolling".visible = true
	queue_free()
	
func update_text(werte):
	for i in werte.size():
		var label_path = "../DiceRolling/Werte/" + str(i)
		var label = get_node(label_path)
		if label:
			label.text = werte[i]



