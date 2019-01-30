extends Area2D

signal Enemy_got_through
export (int) var speed
var HP = 1
func _ready():
	$Timer.start()
	pass
	#get_parent()
	#$Matt1Path/PathFollow2D.set_offset(randi())
	
	#position = $Matt1Path/PathFollow2D.position

func _process(delta):
	if HP <= 0:
		queue_free()
	pass


func _on_Timer_timeout():
	global_position = Vector2(global_position.x-64, global_position.y)
	pass



func _on_Matt1_area_entered(area):
	if position.x >= 150:
		HP -= 1
	#print('matt collide')
	
