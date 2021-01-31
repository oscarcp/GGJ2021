extends Button

onready var anim = get_node("../../AnimationPlayer")

func _on_PlayButton_button_up() -> void:
    #anim.connect("animation_finished", self, "change_scene")
    anim.play("fadeout")
    yield(anim, "animation_finished")
    get_tree().change_scene("res://scenes/level.tscn")
