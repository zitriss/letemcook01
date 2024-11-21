extends Node

@export var midiAudioPlayerResource :MidiAudioPlayerResource
@export var autoPlay :bool = false

func _ready() -> void:
	$MidiPlayer.set_midi(midiAudioPlayerResource.midiResource)
	$AudioStreamPlayer.set_stream(midiAudioPlayerResource.audioStream)
	$MidiPlayer.link_audio_stream_player([$AudioStreamPlayer])
	if autoPlay:
		$MidiPlayer.play()
