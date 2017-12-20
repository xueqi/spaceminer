/// @description Insert description here
// You can write your code in this editor

global.level = 1

ini_open("save.ini")

ini_write_real("save", "level", global.level)
ini_close();

