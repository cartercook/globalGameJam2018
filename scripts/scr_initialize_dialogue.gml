///scr_initialize_dialogue()

// full volume
global.tracks[0] = audio_play_sound(snd_carcas, 10, false)

// silent
global.tracks[1] = audio_play_sound(snd_michael, 10, false)
audio_sound_gain(global.tracks[1], 0, 0)

global.tracks[2] = audio_play_sound(snd_panchetta, 10, false)
audio_sound_gain(global.tracks[2], 0, 0)

global.tracks[3] = audio_play_sound(snd_reznar, 10, false)
audio_sound_gain(global.tracks[3], 0, 0)

global.tracks[4] = audio_play_sound(snd_robot, 10, false)
audio_sound_gain(global.tracks[4], 0, 0)

global.tracks[5] = audio_play_sound(snd_wota, 10, false)
audio_sound_gain(global.tracks[5], 0, 0)
