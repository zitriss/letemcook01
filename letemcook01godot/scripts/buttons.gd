extends Node2D

var buttons : Array[AnimatedSprite2D]

func _ready() -> void:
	buttons = [$Button1, $Button2, $Button3, $Button4]
	for button : AnimatedSprite2D in buttons:
		button.set_frame(1)

func _input(event: InputEvent) -> void:
	if (event.is_action_pressed("note1")):
		buttons[0].play()
	if (event.is_action_pressed("note2")):
		buttons[1].play()
	if (event.is_action_pressed("note3")):
		buttons[2].play()
	if (event.is_action_pressed("note4")):
		buttons[3].play()
