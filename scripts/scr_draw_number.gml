///scr_draw_number(number)

draw_set_font(fnt_pixel_x32)
draw_set_halign(fa_right)
draw_set_valign(fa_center)
draw_set_colour(make_colour_rgb(166, 214, 81))

draw_text(x - sprite_width/2 - 2, y, argument[0])
