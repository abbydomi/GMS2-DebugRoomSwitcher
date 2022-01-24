//Movement keys
var move = 0;
move -= max(keyboard_check_pressed(vk_left),0);
move += max(keyboard_check_pressed(vk_right),0);

if (move != 0) 
{
	cursorpos += move;
	if (cursorpos  < 0) cursorpos =array_length(rooms) - 1;
	if (cursorpos > array_length(rooms) - 1) cursorpos= 0;
}

var interact
interact = max(keyboard_check(vk_enter),0);
if (interact == 1)
{
	room_goto(cursorpos);
}