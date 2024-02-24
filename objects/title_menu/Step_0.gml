up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
confirm_key = keyboard_check_pressed(vk_space);

pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};

//using the options

switch(pos){
case 0:
	room_goto_next()	
	break;
case 1:
	
break;
}