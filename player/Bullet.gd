extends Area2D
var move_speed : float = 250.00

func _ready():
	#set_axis_velocity(Vector2(move_speed,0))
	#show()
	pass

func _physics_process(delta):
	global_position = Vector2(global_position.x+move_speed*delta,global_position.y)
#set_axis_velocity(Vector2(move_speed,0))
	pass


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass # Replace with function body.



func _on_Bullet_area_entered(area):
	queue_free()
	#print('bullet collide')
	pass # Replace with function body.
