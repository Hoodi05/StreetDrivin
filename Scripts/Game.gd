extends Node2D

var carEnemy = preload("res://Scenes/CarEnemy.tscn")

func spawnCar():
	if Global.carEnemyCount <= 8:
	
		var carEnemyInst = carEnemy.instance()
		
		var rand = RandomNumberGenerator.new()
		rand.randomize()
		var width = rand.randi_range(1,4)
		
		if width == 1: width = -160 #1
		elif width == 2: width = -53 #2
		elif width == 3: width = 53 #3
		elif width == 4: width = 160 #4
		
		carEnemyInst.position = Vector2(width,$Car.position.y + -1200)
		add_child(carEnemyInst)
		
		Global.carEnemyCount += 1
	
	yield(get_tree().create_timer(0.7),"timeout")
	spawnCar()
	
	
func _ready():
	Global.carEnemyCount = 0
	Global.multiplier = 1
	spawnCar()

func _on_Bg1VisibilityNotifier2D_screen_exited(): #Background1
	$Background1.position += Vector2(0,-2648)

func _on_Bg2VisibilityNotifier2D_screen_exited(): #Background2
	$Background2.position += Vector2(0,-2648) #1328
