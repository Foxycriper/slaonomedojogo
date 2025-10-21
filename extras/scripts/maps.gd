extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if G.ns == 1:
		$MarginContainer/mapa.visible = false
		$MarginContainer/ns.visible = true
	else:
		$MarginContainer/ns.visible = false
		$MarginContainer/mapa.visible = true
	if Input.is_action_pressed("mapa"):
		$MarginContainer.visible = true
	else:
		$MarginContainer.visible = false
