@tool
extends CollisionShape2D

var s = shape.get_rect()

var speed = 400
var angular_speed = PI

func _draw():
	
	draw_rect(s, Color.GREEN)

#func _init():
	#if Engine.is_editor_hint():
		#queue_redraw()


func _process(delta):
	#rotation += angular_speed * delta
	
	var direction = 0
	if Input.is_action_pressed("ui_left"):
		direction = -1
	if Input.is_action_pressed("ui_right"):
		direction = 1

	rotation += angular_speed * direction * delta
	
	#var velocity = Vector2.UP.rotated(rotation) * speed#
	
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		velocity = Vector2.UP.rotated(rotation) * speed
#
	position += velocity * delta
