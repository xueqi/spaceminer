/// @description 

global.level++

room_goto(roomLevelBegin)

ini_open("save.ini")

ini_write_real("save", "level", global.level)
ini_close();

