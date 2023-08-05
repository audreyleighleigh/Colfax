extends Sprite2D

@export var speed: float = 200

var house_scene: PackedScene

func _ready():
	house_scene = preload("res://InsideHouse.tscn")

func _process(delta):
	var velocity = Vector2.ZERO

	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1

	velocity = velocity.normalized() * speed * delta
	position += velocity

