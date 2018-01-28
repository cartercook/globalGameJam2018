///scr_set_track(track)

// silence current track
audio_sound_gain(global.tracks[global.track], 0, 0)

// new track
global.track = argument[0]

// unsilence new track
audio_sound_gain(global.tracks[global.track], 1, 0)
