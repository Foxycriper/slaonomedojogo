extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

var mot = 0
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _unhandled_input(event: InputEvent) -> void:
	if get_overlapping_bodies().size() > 0 and mot == 0:
		$Sprite2D.play("medo")
		if Input.is_action_just_pressed("up"):
			$Sprite2D.play("morto")
			G.ns = 0
			mot = 1
	elif mot == 0: 
		$Sprite2D.play("normal")
