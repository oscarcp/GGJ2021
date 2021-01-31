extends KinematicBody2D

onready var anim = get_node("AnimationPlayer")

func _physics_process(delta: float) -> void:
    if Input.is_action_pressed("weapon"):
        anim.play("attack")
    elif Input.is_action_just_released("weapon"):
        anim.play("dissapear")
