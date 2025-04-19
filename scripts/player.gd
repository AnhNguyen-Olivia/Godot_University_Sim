extends CharacterBody2D


const SPEED = 130.0
@onready var animated_sprite = $AnimatedSprite2D


func _physics_process(_delta: float) -> void:
	var direction := Input.get_vector("Left", "Right", "Up", "Down")
	if direction:
		velocity = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.y = move_toward(velocity.y, 0, SPEED)
		
	#flip sprite
	if velocity.x > 0: 
		animated_sprite.flip_h = false
	elif velocity.x < 0:
		animated_sprite.flip_h = true
		
	#Play animation
	if velocity.x == 0:
		animated_sprite.play("idle")
	else: animated_sprite.play("walk")

	move_and_slide()
