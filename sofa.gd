extends StaticBody2D

@onready var interactable: Area2D = $Interactable

func _ready() -> void:
	interactable.interact = _on_interact #This cost me a night to figure it out, do not put () in it guys
func _on_interact():
	#interactable.is_interactable = false
	print("You sleep! +20 health, -20 stress.")
