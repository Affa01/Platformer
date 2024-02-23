/// @description Event GUI/Vars/Menu setup

#macro SAVEFILE "Save.sav"

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

// Center the menu horizontally and vertically
menu_x = gui_width + 200;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25; //lower the faster
menu_font = fMenu_;
menu_itemheight = font_get_size(fMenu_);
menu_commited = -1;
menu_control = true;

menu[2] = "New Game";
menu[1] = "Continue";
menu[0] = "New Quit";

menu_items = array_length(menu);
menu_cursor = 2;
