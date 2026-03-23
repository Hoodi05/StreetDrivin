extends Node2D


func _on_Play_pressed():
	get_tree().change_scene("res://Scenes/MainMenu.tscn")
	
func _ready():
	Global.load_game()
	Global.save_game()
	
	

