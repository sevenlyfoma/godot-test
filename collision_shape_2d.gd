@tool
extends CollisionShape2D

var s = shape.get_rect()

func _draw():
	
	draw_rect(s, Color.GREEN)

#func _init():
	#if Engine.is_editor_hint():
		#queue_redraw()
