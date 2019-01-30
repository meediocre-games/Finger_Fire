extends Node

var health = 3
func _ready():
	pass




func _on_EndZone_area_entered(area):
	health -= 1
	pass # Replace with function body.
