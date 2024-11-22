extends Node

func _ready() -> void:
	$MidiAudioPlayer.get_node("MidiPlayer").note.connect(on_note)

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		$MidiAudioPlayer.get_node("AudioStreamPlayer").pitch_scale = 2

func on_note(event, track) -> void:
	if (event['subtype'] == MIDI_MESSAGE_NOTE_ON): # note on
		print("Played note " + str(event['note']))
		
	#print(event)
