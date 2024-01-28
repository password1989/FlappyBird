extends RigidBody2D

export var velocidad = 100
var vivo = true

func _aletear(state:PhysicsDirectBodyState2D):
	state.linear_velocity = Vector2.UP * velocidad
	

func _saltar(state:PhysicsDirectBodyState2D)->void:
	if Input.is_action_just_pressed("aletear"):
		print("Saltar")
		_aletear(state)
