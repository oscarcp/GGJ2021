extends StaticBody2D

onready var anim = get_node("AnimationPlayer")
onready var sound = get_node("AudioStreamPlayer")

func _on_PlayerDetector_body_entered(body: Node) -> void:
    anim.play("dissapear")
    sound.play()
    yield(anim, "animation_finished")
    queue_free()
