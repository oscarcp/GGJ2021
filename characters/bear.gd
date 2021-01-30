extends "res://characters/actor.gd"

func play_growl_audio() -> void:
    var step_sound = get_node("BearGrowl2D")
    # GODDAMN logic b*shit!
    while step_sound.playing == false:
        if step_sound.playing:
            return
        else:
            step_sound.playing = true
    step_sound.stop()

func _ready() -> void:
    set_physics_process(false)
    _velocity.x = -speed.x

func _on_PlayerDetector_body_entered(body: Node) -> void:
    # If player enters area2d go towards him
    # Careful with physics layers!
    print("PLAYER DETECTED")
    get_node("BearGrowl2D").play()
    pass

func _on_WeaponDetector_body_entered(body: Node) -> void:
    # If torch is active, start menacing movement 10 seconds
    # If torch not active stop movement and growl for 5 seconds
    # Release the character
    _velocity = Vector2(0, 0)
    #queue_free()

func _physics_process(delta: float) -> void:
    _velocity.y += gravity * delta
    if is_on_wall():
        _velocity.x *= -1.0
    _velocity.y = move_and_slide(_velocity * 1.3, FLOOR_NORMAL).y
