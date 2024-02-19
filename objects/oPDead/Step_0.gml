/// @description Insert description here
// You can write your code in this editor

if(done == 0){
	vsp = vsp + grv;

	//horizontal collision
	if (place_meeting(x+hsp,y,oWall)){	
		while(!place_meeting(x+sign(hsp),y,oWall)){
			x = x + sign(hsp);
		}
		hsp = 0;
	}
	x = x + hsp;

	//vertical collision
	if (place_meeting(x,y+vsp,oWall)){	
		if (vsp > 0){ 
			done = 1;
			image_index = 1;
			#region room speed
			var setSpeed = function (){
				game_set_speed(60, gamespeed_fps);
				SlideTransition(TRANS_MODE.GOTO,room);
			}
			var timer = time_source_create(time_source_game, 60, time_source_units_frames, setSpeed);
			time_source_start(timer);
			#endregion
			
		}
		while(!place_meeting(x,y+sign(vsp),oWall)){
			y = y + sign(vsp);
		}
		vsp = 0;
	}
	y = y + vsp;

}

