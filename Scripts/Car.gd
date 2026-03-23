extends KinematicBody2D

var movement = Vector2()
const startSpeed = 0
const speedTurn = 150
var maxSpeed = Global.maxSpeed
var score = 0
var almostDeadMoment = 0
var speed = startSpeed
var multiplier = Global.multiplier

func acceleration(speedF):
	yield(get_tree().create_timer(0.1), "timeout")
	speed = speedF + Global.accelerationSpeed 
	
func slowing(speedF):
	speed = speedF - Global.accelerationSpeed 

func countPoints():
	
	score = floor((floor(position.y * -1 / 10) + (almostDeadMoment * 100)) * multiplier)
	get_parent().get_node("CanvasLayer/Point/Label").text = String("YOUR POINTS: ")	
	get_parent().get_node("CanvasLayer/Point/Label").text += String(score)
	
	yield(get_tree().create_timer(0.1), "timeout")
	countPoints()
	
func _ready():
	$Sprite.texture = load(Global.skin)
	countPoints()

func _physics_process(delta):
	if Input.is_action_pressed("ui_down"):
		if speed <= startSpeed: speed = startSpeed
		else: slowing(speed)
			
		movement.y = -speed
	else:
		if speed >= maxSpeed: speed = maxSpeed
		else: acceleration(speed)
			
		movement.y = -speed
		
	#print("ur speed: ",speed) #/10 , "km/h"
	get_parent().get_node("CanvasLayer/Speed/Label").text = String("YOUR SPEED: ")	
	get_parent().get_node("CanvasLayer/Speed/Label").text += String(int(round(speed/10)))
	get_parent().get_node("CanvasLayer/Speed/Label").text += String(" KM/H")
	#print(Engine.get_frames_per_second())
	
	if Input.is_action_pressed("ui_right"):
		movement.x = speedTurn
		rotation_degrees = 10
	elif Input.is_action_pressed("ui_left"):
		movement.x = -speedTurn
		rotation_degrees = -10
	else:
		movement.x = 0	
		rotation_degrees = 0
		
		
	movement = move_and_slide(movement)


func _on_Area2D_body_entered(body):
	if body.is_in_group("barier"):
		Input.action_press("ui_down")
	elif body.is_in_group("enemy"): #DEAD
		Global.score = score
		Global.game = get_parent().name
		get_tree().change_scene("res://Scenes/GameEnd.tscn")

func _on_Area2D_body_exited(body):
	if body.is_in_group("barier"):
		Input.action_release("ui_down")

func _on_Overtake_body_entered(body):
	if body.is_in_group("enemy"):
		Global.carEnemyCount -= 1
		body.queue_free()


func _on_AlmostDead_body_entered(body):
	if body.is_in_group("enemy"):
		almostDeadMoment += 1
