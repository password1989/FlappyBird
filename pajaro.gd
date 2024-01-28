extends CharacterBody2D

@export var gravedad = 600
@export var fuerza_salto = -300

func _ready():
	velocity = Vector2.ZERO
	
func _physics_process(delta):
	if Input.is_action_just_pressed("Saltar"):
		jump()
		
	velocity.y += gravedad * delta
	
	move_and_collide(velocity * delta)

func jump():
	print("Saltar")
	velocity.y = fuerza_salto
