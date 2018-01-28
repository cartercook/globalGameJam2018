///scr_set_track(track)

// get track_position
track_position = audio_sound_get_track_position(global.tracks[global.track])

// new track
global.track = argument[0]

// play other other track starting at track_position
audio_sound_set_track_position(global.tracks[global.track], track_position)
audio_resume_sound(global.tracks[global.track])
