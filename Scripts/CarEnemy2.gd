extends KinematicBody2D

var movement = Vector2()
export var startSpeed = 0
export var maxSpeed = 0
var speed = startSpeed 

func _ready():
	if Global.light == true: 
		$Light2D2.enabled = true
		$Light2D.enabled = true
	elif Global.light == false:
		$Light2D2.enabled = false
		$Light2D.enabled = false
		
	var rand = RandomNumberGenerator.new()
	rand.randomize()
	startSpeed = rand.randi_range(100,350)
	maxSpeed = rand.randi_range(100,440)
	speed = startSpeed 
	
	var spriteTexture = rand.randi_range(1,7)
	
	if spriteTexture == 1: $Sprite.texture = load("res://Graphics/car1.png")
	elif spriteTexture == 2: $Sprite.texture = load("res://Graphics/car2.png")
	elif spriteTexture == 3: $Sprite.texture = load("res://Graphics/car3.png")
	elif spriteTexture == 4: $Sprite.texture = load("res://Graphics/car4.png")
	elif spriteTexture == 5: $Sprite.texture = load("res://Graphics/car5.png")
	elif spriteTexture == 6: $Sprite.texture = load("res://Graphics/car6.png")
	elif spriteTexture == 7: $Sprite.texture = load("res://Graphics/car7.png")


func acceleration(fSpeed):
	yield(get_tree().create_timer(0.3), "timeout")
	speed = fSpeed + 5

func _physics_process(delta):
	if speed >= maxSpeed:
		speed = maxSpeed
	else: acceleration(speed)
		
	movement.y = speed
	
	movement = move_and_slide(movement)

func _on_Overload_body_entered(body):
	if body.is_in_group("enemy"):
		Global.carEnemyCount -= 1
		body.queue_free()
