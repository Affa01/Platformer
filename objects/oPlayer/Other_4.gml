/// @description Autosave

//Overwrite old save
if(file_exists(SAVEFILE)) file_delete(SAVEFILE);

//create new file
var file;
file = file_text_open_write(SAVEFILE);
file_text_write_string(file,room_get_name(room));
file_text_close(file);