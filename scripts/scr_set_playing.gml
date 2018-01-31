///scr_set_playing(playing)

for (var i = 0; i <= 5; i++) {
    if argument[0] {
        audio_resume_sound(global.tracks[i])
    } else {
        audio_pause_sound(global.tracks[i])
    }
}
