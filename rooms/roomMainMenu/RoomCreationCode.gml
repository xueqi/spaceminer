global.level = 1

ini_open("save.ini")

global.level = ini_read_real("save", "level", 1)
global.targets = ds_list_create()
