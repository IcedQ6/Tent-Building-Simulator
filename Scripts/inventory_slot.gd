extends Area2D

var _item

@export var texture : Texture2D
@export var itemType : Item
@export var button : Button

enum Item {
	TEST,
	POLE,
	BODY,
	RAINFLY,
	STAKE,
	HAMMER,
	FLOORTARP
}

func _on_area_entered(area) :
	_item = area
	
	
