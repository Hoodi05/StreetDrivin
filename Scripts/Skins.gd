extends Node2D


func _on_Back_pressed():
	get_tree().change_scene("res://Scenes/Shop.tscn")
	
func _physics_process(delta):
	$ShopInfo.bbcode_text = String("[center]Your Coins: ")	
	$ShopInfo.bbcode_text += String(Global.money)
	
	if Global.orangeSkinBought == true:
		$ScrollContainer/HBoxContainer/OrangeCar/Info.bbcode_text = String("[center]")	#now bought
		if Global.skin == "res://Graphics/car1.png":
			$ScrollContainer/HBoxContainer/OrangeCar/Info.bbcode_text = String("[center]Selected")	
	else:
		$ScrollContainer/HBoxContainer/OrangeCar/Info.bbcode_text = String("[center]Buy now")	
	
	
	if Global.greenSkinBought == true:
		$ScrollContainer/HBoxContainer/GreenCar/Info.bbcode_text = String("[center]")	
		if Global.skin == "res://Graphics/car2.png":
			$ScrollContainer/HBoxContainer/GreenCar/Info.bbcode_text = String("[center]Selected")
	else:
		$ScrollContainer/HBoxContainer/GreenCar/Info.bbcode_text = String("[center]Buy now")	
	
	
	if Global.redSkinBought == true:
		$ScrollContainer/HBoxContainer/RedCar/Info.bbcode_text = String("[center]")	
		if Global.skin == "res://Graphics/car3.png":
			$ScrollContainer/HBoxContainer/RedCar/Info.bbcode_text = String("[center]Seleced")
	else:
		$ScrollContainer/HBoxContainer/RedCar/Info.bbcode_text = String("[center]Buy now")	
		
		
	if Global.yellowSkinBought == true:
		$ScrollContainer/HBoxContainer/YellowCar/Info.bbcode_text = String("[center]")	
		if Global.skin == "res://Graphics/car4.png":
			$ScrollContainer/HBoxContainer/YellowCar/Info.bbcode_text = String("[center]Seleced")
	else:
		$ScrollContainer/HBoxContainer/YellowCar/Info.bbcode_text = String("[center]Buy now")	
	
	
	if Global.blueSkinBought == true:
		$ScrollContainer/HBoxContainer/BlueCar/Info.bbcode_text = String("[center]")	
		if Global.skin == "res://Graphics/car5.png":
			$ScrollContainer/HBoxContainer/BlueCar/Info.bbcode_text = String("[center]Seleced")
	else:
		$ScrollContainer/HBoxContainer/BlueCar/Info.bbcode_text = String("[center]Buy now")	
		
	if Global.pinkSkinBought == true:
		$ScrollContainer/HBoxContainer/PinkCar/Info.bbcode_text = String("[center]")	
		if Global.skin == "res://Graphics/car6.png":
			$ScrollContainer/HBoxContainer/PinkCar/Info.bbcode_text = String("[center]Seleced")
	else:
		$ScrollContainer/HBoxContainer/PinkCar/Info.bbcode_text = String("[center]Buy now")	
		
	
	if Global.purpleSkinBought == true:
		$ScrollContainer/HBoxContainer/PurpleCar/Info.bbcode_text = String("[center]")	
		if Global.skin == "res://Graphics/car7.png":
			$ScrollContainer/HBoxContainer/PurpleCar/Info.bbcode_text = String("[center]Seleced")
	else:
		$ScrollContainer/HBoxContainer/PurpleCar/Info.bbcode_text = String("[center]Buy now")	
		
	
	if Global.monsterSkinBought == true:
		$ScrollContainer/HBoxContainer/MonsterCar/Info.bbcode_text = String("[center]")	
		if Global.skin == "res://Graphics/carMonster.png":
			$ScrollContainer/HBoxContainer/MonsterCar/Info.bbcode_text = String("[center]Seleced")
	else:
		$ScrollContainer/HBoxContainer/MonsterCar/Info.bbcode_text = String("[center]Buy now")	
		
		
func _on_OrangeCar_pressed():
	if Global.orangeSkinBought == true:
		Global.skin = "res://Graphics/car1.png"
	elif Global.orangeSkinBought == false:
		if Global.money >= 500:
			Global.orangeSkinBought = true
			Global.money -= 500
	Global.save_game()	
		
func _on_GreenCar_pressed():
	if Global.greenSkinBought == true:
		Global.skin = "res://Graphics/car2.png"
	elif Global.greenSkinBought == false:
		if Global.money >= 500:
			Global.greenSkinBought = true
			Global.money -= 500
	Global.save_game()
	
func _on_RedCar_pressed():
	if Global.redSkinBought == true:
		Global.skin = "res://Graphics/car3.png"
	elif Global.redSkinBought == false:
		if Global.money >= 500:
			Global.redSkinBought = true
			Global.money -= 500
	Global.save_game()
	
func _on_YellowCar_pressed():
	if Global.yellowSkinBought == true:
		Global.skin = "res://Graphics/car4.png"
	elif Global.yellowSkinBought == false:
		if Global.money >= 500:
			Global.yellowSkinBought = true
			Global.money -= 500
	Global.save_game()

func _on_BlueCar_pressed():
	if Global.blueSkinBought == true:
		Global.skin = "res://Graphics/car5.png"
	elif Global.blueSkinBought == false:
		if Global.money >= 500:
			Global.blueSkinBought = true
			Global.money -= 500
	Global.save_game()

func _on_PinkCar_pressed():
	if Global.pinkSkinBought == true:
		Global.skin = "res://Graphics/car6.png"
	elif Global.pinkSkinBought == false:
		if Global.money >= 500:
			Global.pinkSkinBought = true
			Global.money -= 500
	Global.save_game()

func _on_PurpleCar_pressed():
	if Global.purpleSkinBought == true:
		Global.skin = "res://Graphics/car7.png"
	elif Global.purpleSkinBought == false:
		if Global.money >= 500:
			Global.purpleSkinBought = true
			Global.money -= 500
	Global.save_game()


func _on_MonsterCar_pressed():
	if Global.monsterSkinBought == true:
		Global.skin = "res://Graphics/carMonster.png"
	elif Global.monsterSkinBought == false:
		if Global.money >= 2000:
			Global.monsterSkinBought = true
			Global.money -= 2000
	Global.save_game()
