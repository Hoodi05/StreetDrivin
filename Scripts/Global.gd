extends Node

var light = false

var score = 0
var game = ""
var carEnemyCount = 0
var multiplier = 1

var skin = "res://Graphics/car1.png"
var accelerationSpeed = 5.0
var maxSpeed = 400

var money = 0
var highScore1 = 0
var highScore2 = 0

var orangeSkinBought = true
var greenSkinBought = false
var redSkinBought = false
var yellowSkinBought = false
var blueSkinBought = false
var pinkSkinBought = false
var purpleSkinBought = false
var monsterSkinBought = false


var data = {
	"skin": skin,
	"accelerationSpeed": accelerationSpeed,
	"maxSpeed": maxSpeed,
	"money": money,
	"highScore1": highScore1,
	"highScore2": highScore2,
	"orangeSkinBought": orangeSkinBought,
	"greenSkinBought": greenSkinBought,
	"redSkinBought": redSkinBought,
	"yellowSkinBought": yellowSkinBought,
	"blueSkinBought": blueSkinBought,
	"pinkSkinBought": pinkSkinBought,
	"purpleSkinBought": purpleSkinBought,
	"monsterSkinBought": monsterSkinBought
	
}

func load_game():
	var file = File.new()
	
	if file.file_exists("user://data.json"):
		file.open("user://data.json", file.READ)
		var save_var = parse_json(file.get_as_text())
		Global.skin = save_var["skin"]
		Global.accelerationSpeed = save_var["accelerationSpeed"]
		Global.maxSpeed = save_var["maxSpeed"]
		Global.money = save_var["money"]
		Global.highScore1 = save_var["highScore1"]
		Global.highScore2 = save_var["highScore2"]
		Global.orangeSkinBought = save_var["orangeSkinBought"]
		Global.greenSkinBought = save_var["greenSkinBought"]
		Global.redSkinBought = save_var["redSkinBought"]
		Global.yellowSkinBought = save_var["yellowSkinBought"]
		Global.blueSkinBought = save_var["blueSkinBought"]
		Global.pinkSkinBought = save_var["pinkSkinBought"]
		Global.purpleSkinBought = save_var["purpleSkinBought"]
		Global.monsterSkinBought = save_var["monsterSkinBought"]
		file.close()

func save_game():
	data = {
		"skin": skin,
		"accelerationSpeed": accelerationSpeed,
		"maxSpeed": maxSpeed,
		"money": money,
		"highScore1": highScore1,
		"highScore2": highScore2,
		"orangeSkinBought": orangeSkinBought,
		"greenSkinBought": greenSkinBought,
		"redSkinBought": redSkinBought,
		"yellowSkinBought": yellowSkinBought,
		"blueSkinBought": blueSkinBought,
		"pinkSkinBought": pinkSkinBought,
		"purpleSkinBought": purpleSkinBought,
		"monsterSkinBought": monsterSkinBought
	}
	
	var file
	file = File.new()
	file.open("user://data.json", File.WRITE)
	file.store_line(to_json(data))
	file.close()





#var dataToSave = {
#	"skin": skin,
#	"accelerationSpeed": accelerationSpeed,
#	"maxSpeed": maxSpeed,
#	
#	"money": money,
#	"highScore1": highScore1,
#	"highScore2": highScore2,
#	
#	"orangeSkinBought": orangeSkinBought,
#	"greenSkinBought": greenSkinBought,
#	"redSkinBought": redSkinBought,
#	"yellowSkinBought": yellowSkinBought,
#	"blueSkinBought": blueSkinBought,
#	"pinkSkinBought": pinkSkinBought,
#	"purpleSkinBought": purpleSkinBought,
#	"monsterSkinBought": monsterSkinBought
#}



	
#Global.skin = save_var.get("skin", "res://Graphics/car1.png")
#Global.accelerationSpeed = save_var.get("accelerationSpeed", 5.0)
#Global.maxSpeed = save_var.get("maxSpeed", 450)

#Global.money = save_var.get("money", 1)
#Global.highScore1 = save_var.get("highScore1", 0)
#Global.highScore2 = save_var.get("highScore2", 0)

#Global.orangeSkinBought = save_var.get("orangeSkinBought", true)
#Global.greenSkinBought = save_var.get("greenSkinBought", false)
#Global.redSkinBought = save_var.get("redSkinBought", false)
#Global.yellowSkinBought = save_var.get("yellowSkinBought", false)
#Global.blueSkinBought = save_var.get("blueSkinBought", false)
#Global.pinkSkinBought = save_var.get("pinkSkinBought", false)
#Global.purpleSkinBought = save_var.get("purpleSkinBought", false)
#Global.monsterSkinBought = save_var.get("monsterSkinBought", false)




