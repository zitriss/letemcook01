extends Node

func _ready() -> void:
	$MidiAudioPlayer.get_node("MidiPlayer").note.connect(on_note)

func on_note(event, track) -> void:
	if (event['subtype'] == MIDI_MESSAGE_NOTE_ON): # note on
		print("Played note " + str(event['note']))
		
	#print(event)
