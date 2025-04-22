extends StaticBody2D

@onready var interactable: Area2D = $Interactable

func _ready() -> void:
	interactable.interact = _on_interact #This cost me a night to figure it out, do not put () in it guys
func _on_interact():
	#interactable.is_interactable = false
	print("You study! -0.2 gpa, -10 health, +10 stress.")
