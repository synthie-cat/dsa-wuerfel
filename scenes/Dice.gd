extends Node

var result_0: int = 0
var result_1: int = 0
var result_2: int = 0

func roll_dice(sides: int, num_rolls: int):
	result_0 = 0
	result_1 = 0
	result_2 = 0
	if num_rolls == 1:
		result_0 += randi() % sides + 1
	if num_rolls == 3:
		result_0 += randi() % sides + 1
		result_1 += randi() % sides + 1
		result_2 += randi() % sides + 1



func _on_w_20_pressed():
	roll_dice(20, 1)
	$"../Dice_result".text = "W20: " + str(result_0)


func _on_3_w_20_pressed():
	roll_dice(20, 3)
	$"../Dice_result".text = "W20 1: " + str(result_0) + "\n\n W20 2: " + str(result_1) + "\n\n W20 3: " + str(result_2)
	

func _on_w_6_pressed():
	roll_dice(6, 1)
	$"../Dice_result".text = "W6: " + str(result_0)
