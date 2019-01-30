extends KinematicBody2D

export (PackedScene) var Bullet
var screensize
var move_speed : float = 300.00
const RELOAD_TIME: float = 0.8
var reloading : float = 0.0
func _ready():
	position = Vector2(150, 300)
	screensize = get_viewport_rect().size
	pass

func _physics_process(delta):
	reloading -= delta
	var y_movespeed : float = Input.get_action_strength("down") - Input.get_action_strength("up")
	var motion : Vector2 = Vector2(0, y_movespeed * delta * move_speed)
	_shoot()
	move_and_collide(motion)
	position.x =clamp(position.x,0,screensize.x)
	position.y = clamp(position.y,0,screensize.y)
	
func _shoot():
	if Input.is_action_pressed("shoot"):
		if reloading <= 0:
			var bullet = Bullet.instance()
			#print('shooting')
			bullet.global_position = Vector2(global_position.x+100,global_position.y)
			get_parent().add_child(bullet)
			reloading = RELOAD_TIME
	