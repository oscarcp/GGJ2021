extends Node

signal tinder_updated
signal sanity_updated

var tinder: = 0 setget set_tinder
var sanity: = 100 setget set_sanity

func set_tinder(value: int) -> void:
    tinder = value
    emit_signal("tinder_updated")

func set_sanity(value: int) -> void:
    sanity = value
    emit_signal("sanity_updated")
