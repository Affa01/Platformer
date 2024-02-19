/// @description Insert description here
// You can write your code in this editor

//update destination
if (instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
	
	if (follow.object_index == oPDead) {
		x = xTo;
		y = yTo;
	}
}


//update object position
x += (xTo - x) / 25;
y += (yTo - y) / 25;

//Keep camera center inside room
x = clamp(x,view_w_half,room_width-view_w_half);
y = clamp(y,view_h_half,room_height-view_h_half);

//Screen shake
x+= random_range(-shake_remain,shake_remain);
y+= random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((2/shake_length)*shake_magnitude));


//Update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

if(layer_exists("Mountains")){
	layer_x("Mountains", x/2); 
}
if(layer_exists("Trees")){
	layer_x("Trees", x/4); 
}
//if(layer_exists("Ring_Planet")){
//	layer_x("Ring_Planet", x/2); 
//}
if(layer_exists("Big_Planet")){
	layer_x("Big_Planet", x/2); 
}
//if(layer_exists("Double_Planet")){
//	layer_x("Double_Planet", x); 
//}