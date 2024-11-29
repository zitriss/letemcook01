extends Node

func _ready() -> void:
	$MidiPlayer.link_audio_stream_player([$AudioStreamPlayer])
	$MidiPlayer.play()

func _on_midi_player_note(event, track) -> void:
	print(str(track) + " : " + str(event))
