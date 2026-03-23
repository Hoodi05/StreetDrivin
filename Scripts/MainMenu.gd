extends Node2D



func _physics_process(delta):
	
	$ShopInfo.bbcode_text = String("[center]Your Coins: ")	
	$ShopInfo.bbcode_text += String(Global.money)
	
	$PlayInfo.bbcode_text = String("[center]Your Highscore: ")	
	$PlayInfo.bbcode_text += String(Global.highScore1)
	
	$Play2Info.bbcode_text = String("[center]Your Highscore: ")	
	$Play2Info.bbcode_text += String(Global.highScore2)


func _on_Play_pressed():
	get_tree().change_scene("res://Scenes/Game.tscn")

func _on_Play2_pressed():
	get_tree().change_scene("res://Scenes/Game2.tscn")

func _on_Exit_pressed():
	get_tree().quit()

func _on_Shop_pressed():
	get_tree().change_scene("res://Scenes/Shop.tscn")


func _on_CheckButton_toggled(button_pressed):
	if button_pressed == true: Global.light = true
	elif button_pressed == false: Global.light = false
