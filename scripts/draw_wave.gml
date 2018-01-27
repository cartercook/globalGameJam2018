/// @description Draws the sound wave of the given buffer
/// @param buffer
var buffer = argument[0]
var xx = (room_width/50) - timeline_x;
var yy = room_height/50*41.5;
var hh = room_height/50*8.5*4;
yy -= hh/2;
var data_on_screen = audio_sound_length(global.song)*timeline_scale;
var play_pos = 0;
//var date_on_screen = ww*timeline_scale;

if(buffer_get_size(buffer) > 1) {
    var i = 0;
    var offset = 44;
    buffer_seek(buffer, buffer_seek_start, 0);
    var y1 = 0;
    var y2 = 0;
    
    repeat (data_on_screen) { // how much data can be displayed from the whole.
        y1 = buffer_read(buffer, buffer_s16) / 1000; // Amp of sample point 1 (2 bytes).
        y2 = buffer_read(buffer, buffer_s16) / 1000; // Amp of sample point 2 (2 bytes).
        buffer_seek (buffer, buffer_seek_relative, -2); // Buffer position 2 bytes are put back as
    
        if (xx+(i*4) >= room_width/50) {
            draw_triangle(xx+(i*4), yy+(hh/2.5)-y1,      xx+((i+1)*4), yy+(hh/2.5)-y2,      xx+((i)*4),   yy+(hh/2), false);
            draw_triangle(xx+(i*4), yy+(hh-(hh/2.5))+y1, xx+((i+1)*4), yy+(hh-(hh/2.5))+y2, xx+((I+1)*4), yy+(hh/2), false);
        }
    
        if (xx+(i*4) >= room_width/50*49) {
            break;
        }
    
        i++;
    }
}
