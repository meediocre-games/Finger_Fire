extends Node

export (PackedScene) var Matt
var max_enemies = 10


func _ready():
	$MattTimer.start()
	pass

func _process(delta):
	if max_enemies <= 0:
		$MattTimer.stop()

func _on_MattTimer_timeout():
	max_enemies -= 1
	$MattPath/MattSpawnLocation.set_offset(randi())
	
	var matt  = Matt.instance()
	get_parent().add_child(matt)
	
	matt.position = $MattPath/MattSpawnLocation.position
