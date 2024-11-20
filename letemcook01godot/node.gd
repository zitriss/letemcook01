extends Node

var midi_player

func _ready():
	midi_player = $MidiPlayer
	
	midi_player.loop = true
	midi_player.note.connect(my_note_callback)

	  # link the AudioStreamPlayer in your scene
	  # that contains the music associated with the midi
	  # NOTE: this must be an array, you can link multiple ASPs or one as 
	  # shown below and they will all sync with playback of the MIDI
	midi_player.link_audio_stream_player([$AudioStreamPlayer])

	  # this will also start the audio stream player (music)
	midi_player.play()

func my_note_callback(event, track):
	if (event['subtype'] == MIDI_MESSAGE_NOTE_ON): # note on
		pass
	elif (event['subtype'] == MIDI_MESSAGE_NOTE_OFF): # note off
		pass

	print("[Track: " + str(track) + "] Note played: " + str(event['note']))
