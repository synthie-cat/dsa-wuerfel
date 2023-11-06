extends Node

var result_0: int = 0
var result_1: int = 0
var result_2: int = 0

func _ready():
	hide()

func roll_dice(sides: int, num_rolls: int):
	result_0 = 0
	result_1 = 0
	result_2 = 0
	if num_rolls == 1:
		result_0 += randi() % sides + 1
#		result_0 = 20
	elif num_rolls == 3:
		result_0 += randi() % sides + 1
		result_1 += randi() % sides + 1
		result_2 += randi() % sides + 1
#		result_1 = 20
#		result_2 = 20

func _on_w_20_pressed():
	hide()
	roll_dice(20, 1)
	$"../D20/die".text = str(result_0)
	if result_0 == 1:
		roll_dice (20, 1)
		if result_0 == 1:
			$"../crit".visible = true
	elif result_0 == 20:
		roll_dice (20, 1)
		if result_0 == 20:
			$"../crit_fail".visible = true
	$"../D20".visible = true

func _on_3_w_20_pressed():
	hide()
	roll_dice(20, 3)
	$"../3D20/die_1".text = str(result_0)
	$"../3D20/die_2".text = str(result_1)
	$"../3D20/die_3".text = str(result_2)
	if (result_0 == 1 && result_1 == 1) || (result_0 == 1 && result_2 == 1) || (result_1 == 1 && result_2 == 1):
		$"../crit".visible = true
	elif (result_0 == 20) || (result_1 == 20) || (result_2 == 20):
		$"../fail".visible = true
	elif (result_0 == 20 && result_1 == 20) || (result_0 == 20 && result_2 == 20) || (result_1 == 20 && result_2 == 20):
		$"../crit_fail".visible = true
	elif (result_0 == 1) || (result_1 == 1) || (result_2 == 1):
		$"../success".visible = true
	$"../3D20".visible = true

func _on_w_6_pressed():
	hide()
	roll_dice(6, 1)
	$"../D6/die".text = str(result_0)
	$"../D6".visible = true

func hide():
	$"../3D20".visible = false
	$"../D20".visible = false
	$"../D6".visible = false
	$"../crit".visible = false
	$"../crit_fail".visible = false
	$"../success".visible = false
	$"../fail".visible = false
