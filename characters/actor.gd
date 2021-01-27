extends KinematicBody2D
class_name Actor

export var speed: = Vector2(100.0, 1000.0)
export var velocity: = Vector2(100.0, 0)
export var gravity = 400.0
export var inertia = 100.0

func _physics_process(delta: float) -> void:
	# Add gravity
	velocity.y += gravity * delta
	# Prevent infinite acceleration!
	velocity.y = max(velocity.y, speed.y)
	# Go!
	velocity = move_and_slide(velocity)
