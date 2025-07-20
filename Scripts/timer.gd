extends Node2D

@onready var timer_ui = $MarginContainer/timer_ui
@onready var timer = $countdown
@onready var timer_sound = $timer_ticking
@onready var timer_ding = $timer_ding

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer_sound.play()
	timer.start()

func time_left():
	var time_left = timer.time_left
	var minute = floor(time_left / 60)
	var second = int(time_left) % 60
	return [minute, second]

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	timer_ui.text = "%02d:%02d" % time_left()

func _on_countdown_timeout() -> void:
	timer_sound.stop()
	timer_ding.play()
