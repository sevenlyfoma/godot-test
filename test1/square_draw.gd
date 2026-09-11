@tool
extends CollisionShape2D

var s = shape.get_rect()


func _process(delta: float) -> void:
	pass

func _draw():
	
	draw_rect(s, Color.GREEN)
