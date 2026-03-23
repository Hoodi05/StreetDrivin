extends Node2D

func _physics_process(delta):
	$CoinsInfo.bbcode_text = String("[center]Your Coins: ")	
	$CoinsInfo.bbcode_text += String(Global.money)
	
	
func _ready():
	
	$Coins.bbcode_text = String("[center]New Coins: \n")	
	$Coins.bbcode_text += String(int(round(Global.score/10)))	
	Global.money += int(round(Global.score/10))
	
	if Global.game == "Game":
		if Global.score > Global.highScore1:
			Global.highScore1 = Global.score
			$Score.bbcode_text = String("[wave][center]New Game1 Highscore: \n")	
			$Score.bbcode_text += String(Global.score)
		else:
			$Score.bbcode_text = String("[center]Your Game1 Score: \n")	
			$Score.bbcode_text += String(Global.score)
	elif Global.game == "Game2":
		if Global.score > Global.highScore2:
			Global.highScore2 = Global.score
			$Score.bbcode_text = String("[wave][center]New Game2 Highscore: \n")	
			$Score.bbcode_text += String(Global.score)
		else:
			$Score.bbcode_text = String("[center]Your Game2 Score: \n")	
			$Score.bbcode_text += String(Global.score)
			
	Global.save_game()

func _on_Back_pressed():
	get_tree().change_scene("res://Scenes/MainMenu.tscn")
