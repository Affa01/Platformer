// @description Insert description here
// You can write your code in this editor
#region //Get Player Input

if (hascontrol){
key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_jump = keyboard_check(vk_space);  
} else {
	key_right = 0;
	key_left = 0;
	key_jump = 0;
}
#endregion
#region//calculate movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

//jump
if (place_meeting(x,y+1,oWall)) and (key_jump){
	vsp = -7;
}

#endregion
#region//horizontal collision
if (place_meeting(x+hsp,y,oWall)){	
	while(!place_meeting(x+sign(hsp),y,oWall)){
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//vertical collision
if (place_meeting(x,y+vsp,oWall)){	
	while(!place_meeting(x,y+sign(vsp),oWall)){
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

#endregion
#region//Animation
if (!place_meeting(x,y+1,oWall)){
	sprite_index = sPlayerA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
} else {
	image_speed = 1
	if (hsp == 0){
		sprite_index = sPlayer;
	} else {
		sprite_index = sPlayerR;
	}
}


//igual ao de baixo
//if (key_left) image_xscale = -1; else image_xscale = 1;

if (hsp != 0) image_xscale = sign(hsp);
#endregion