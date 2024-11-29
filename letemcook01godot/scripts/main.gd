extends Node

func _ready() -> void:
	$MidiPlayer.link_audio_stream_player([$AudioStreamPlayer])
	$MidiPlayer.play()

func _on_midi_player_note(event, track) -> void:
	display_note(event)
	#print(str(track) + " : " + str(event))

func display_note(event) -> void:
	if (
		event["track"] == 0 && 
		event["channel"] == 0 &&
		event["subtype"] == MIDI_MESSAGE_NOTE_ON
	):
		match event["note"]:
			60:
				print("o   ")
			62:
				print(" o  ")
			64:
				print("  o ")
			65:
				print("   o")
