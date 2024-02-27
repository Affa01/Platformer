/// @description Draw Menu

draw_set_font(fMenu_);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for (var _i = 0; _i < menu_items; _i++){
	var _offset = 2;
	var _txt = menu[_i];
	var _col;
	
	if(menu_cursor == _i){
		_txt = string_insert(">> ", _txt, 0);
		_col = c_white;
	}else{
		_col = c_gray;
	};
	var _xx = menu_x;
	var _yy = menu_y - (menu_itemheight * (_i * 2));
	
	draw_set_color(c_black);
	draw_text(_xx - _offset,_yy,_txt);
	draw_text(_xx + _offset,_yy,_txt);
	draw_text(_xx,_yy + _offset,_txt);
	draw_text(_xx,_yy - _offset,_txt);
	draw_set_color(_col);
	draw_text(_xx,_yy,_txt);
}
