// Get player input 
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

// calculate movement 
var move = key_right - key_left;

hsp = move * walksp;

//horizontal movement 
if (place_meeting(x +hsp, y, oWall))
{
	while (!place_meeting(x+sign(hsp),y, oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;	
}


x = x + hsp;
vsp = vsp + grv;

if (place_meeting(x,y+1, oWall)) && (key_jump) {
		vsp= -7
}

//vertical movement

if (place_meeting(x,y+vsp, oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;	
}	
y = y + vsp;
