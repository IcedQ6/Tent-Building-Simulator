extends Node2D

#knot pieces
@onready var piece1 = $Area2D/piece1
@onready var piece2 = $Area2D/piece2
@onready var piece3 = $Area2D/piece3
@onready var piece4 = $Area2D/piece4

#collision circle to click
@onready var interact_circle = $Area2D/interact_circle

func _ready() -> void:
	piece1.visible = false
	piece2.visible = false
	piece3.visible = false
	piece4.visible = false

func _process(delta: float) -> void:
	pass

func _on_area_2d_area_entered(area: Area2D) -> void:
	print("detecting mouse")
