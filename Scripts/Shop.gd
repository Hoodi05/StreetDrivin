extends Node2D


func _on_Back_pressed():
	get_tree().change_scene("res://Scenes/MainMenu.tscn")


func _on_Skins_pressed():
	get_tree().change_scene("res://Scenes/Skins.tscn")

func _physics_process(delta):
	$ShopInfo.bbcode_text = String("[center]Your Coins: ")	
	$ShopInfo.bbcode_text += String(Global.money)
	
	$AccelerationInfo.bbcode_text = String("[center]Your: ")	
	$AccelerationInfo.bbcode_text += String(Global.accelerationSpeed/10)	
	
	$MaxSpeedInfo.bbcode_text = String("[center]Your: ")	
	$MaxSpeedInfo.bbcode_text += String(Global.maxSpeed/10)	



func _on_MaxSpeedAdd_pressed():
	if Global.money >= 100:
		Global.maxSpeed += 10.0
		Global.money -= 100
		Global.save_game()


func _on_AccelerationAdd_pressed():
	if Global.money >= 100:
		Global.accelerationSpeed += 1
		Global.money -= 100
		Global.save_game()
