//Get display info
var width = window_get_width()
var height = window_get_height()

//You can change these to reposition the room selector wherever you want
var xx = width/75;
var yy = height/99;
var padding = 2;
var arrowScale = 3;

//Draw the overlay
draw_set_valign(fa_top)
draw_set_color(c_black);
draw_set_alpha(0.8)
draw_rectangle(xx-padding,yy-padding,xx+string_width(rooms[cursorpos])+padding,yy+string_height(rooms[cursorpos])+padding,false)
draw_set_alpha(1)
draw_set_color(c_white)

//Draw the text and arrows
draw_text(xx,yy,rooms[cursorpos])
draw_sprite_ext(sMenuArrow,0,xx-padding*2,yy+string_height(rooms[cursorpos])/2,-arrowScale,arrowScale,0,c_white,1)
draw_sprite_ext(sMenuArrow,0,xx+string_width(rooms[cursorpos])+padding*2,yy+string_height(rooms[cursorpos])/2,arrowScale,arrowScale,0,c_white,1)

//Reset values
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_white);