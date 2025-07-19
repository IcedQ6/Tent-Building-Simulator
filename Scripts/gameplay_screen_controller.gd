extends Node

# Variable that stores what screen the game is on (made an enumarator for readability)
enum screen { TENT, ITEMS}
var currentScreen = screen.ITEMS #Default

# Nodes of both main screens
var itemSide
var tentSide

func _ready() :
	itemSide = get_node("ItemSide")
	tentSide = get_node("TentSide")

func change_Screen() :
	# Decides which screen to change it to
	if (currentScreen == screen.TENT):
		currentScreen = screen.ITEMS
		itemSide.visible = true
		tentSide.visible = false
	else:
		currentScreen = screen.TENT
		itemSide.visible = false
		tentSide.visible = true
	

func _on_arrow_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	# does this check every frame the mouse hovers over the button? yes
	# do I care? no
	if event is InputEventMouseButton:
		if event.is_pressed():
			change_Screen()
	
