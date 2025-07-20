extends Area2D

class_name item

var originalPosition: Vector2
@export var itemType: Item

var isMoving: bool = false

func _ready() :
	originalPosition.x = position.x
	originalPosition.y = position.y

enum Item {
	TEST,
	POLE,
	BODY,
	RAINFLY,
	STAKE,
	HAMMER,
	FLOORTARP
}

#___________________________________________________________________

# Allows the player to click and drag the item
func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton :
		if event.is_released():
			isMoving = false
			item_released()
		elif event.is_pressed():
			isMoving = true
			


func item_released():
	#default case
	position = originalPosition

func drag_and_move():
	position = get_global_mouse_position()
	

func _process(delta: float) -> void:
	if isMoving: drag_and_move()
