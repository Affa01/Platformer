/// @description Insert description here
// You can write your code in this editor
x = oPlayer.x;
y = oPlayer.y + 10;

image_angle = point_direction(x,y,mouse_x,mouse_y);

firingdelay = firingdelay - 1;
recoil = max(0, recoil - 1);

if (mouse_check_button(mb_left)) and (firingdelay < 0){
	recoil = 4;
	firingdelay = 10;
	ScreenShake(2,10);
	audio_play_sound(snShot,1,false);
	with (instance_create_layer(x,y,"Bullet",oBullet)){
		//speed of the bullet
		speed = 25;
		//the other.image_angle is the direction of the movement of the gun, we have to put other cause we are working with oBullet
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
		
	}
}

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);

if (image_angle > 90) and (image_angle < 270){
	image_yscale = -1;
}else {
	image_yscale = 1;
}