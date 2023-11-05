extends Control

var dice_scene = preload("res://scenes/dice_rolling.tscn")

func _on_hesindian_pressed():
	$"../DiceRolling/Werte/MU".text = "MU: 12 "
	$"../DiceRolling/Werte/KL".text = "KL: 15 " 
	$"../DiceRolling/Werte/IN".text = "IN: 14 "
	$"../DiceRolling/Werte/CH".text = "CH: 14 "
	$"../DiceRolling/Werte/FF".text = "FF: 13 "
	$"../DiceRolling/Werte/GE".text = "GE: 11 "
	$"../DiceRolling/Werte/KO".text = "KO: 11 "
	$"../DiceRolling/Werte/KK".text = "KK: 9"
	visible = false
	$"../DiceRolling".visible = true
	queue_free()

func _on_leomara_pressed():
	$"../DiceRolling/Werte/MU".text = "MU: 14 "
	$"../DiceRolling/Werte/KL".text = "KL: 11 "
	$"../DiceRolling/Werte/IN".text = "IN: 13 "
	$"../DiceRolling/Werte/CH".text = "CH: 11 "
	$"../DiceRolling/Werte/FF".text = "FF: 10 "
	$"../DiceRolling/Werte/GE".text = "GE: 13 "
	$"../DiceRolling/Werte/KO".text = "KO: 14 "
	$"../DiceRolling/Werte/KK".text = "KK: 14"
	visible = false
	$"../DiceRolling".visible = true
	queue_free()



func _on_romoxosch_pressed():
	$"../DiceRolling/Werte/MU".text = "MU: 13 "
	$"../DiceRolling/Werte/KL".text = "KL: 10 "
	$"../DiceRolling/Werte/IN".text = "IN: 12 "
	$"../DiceRolling/Werte/CH".text = "CH: 9 "
	$"../DiceRolling/Werte/FF".text = "FF: 13 "
	$"../DiceRolling/Werte/GE".text = "GE: 11 "
	$"../DiceRolling/Werte/KO".text = "KO: 15 "
	$"../DiceRolling/Werte/KK".text = "KK: 15 "
	visible = false
	$"../DiceRolling".visible = true
	queue_free()
