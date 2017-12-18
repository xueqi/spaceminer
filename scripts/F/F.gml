funcname = argument0

if funcname == "itemAt" {
	var id1 = argument1;
	var id2 = argument2;
	return ds_grid_get(objControll.mapObjects, id1, id2);
} else if funcname == "removeItemAt" {
	var id1 = argument1;
	var id2 = argument2;
	return ds_grid_set(objControll.mapObjects, id1, id2, 0);
} else if funcname == "coordXAt" or funcname == "x" {
	var id1 = argument1;
	var id2 = argument2;
	return objControll.left + objControll.blockWidth * (id2 + 0.5);
} else if funcname == "coordYAt" or funcname == "y" {
	var id1 = argument1;
	var id2 = argument2;
	return objControll.top + objControll.blockHeight * (id1 + 0.5);
}