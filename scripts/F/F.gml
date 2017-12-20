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
} else if funcname == "indexXAt" {
	var xx = argument1;
	var yy = argument2;
	var a = floor((xx - objControll.left) / objControll.blockWidth);
	if a < 0 a = 0
	if a >= objControll.ncols a = objControll.ncols - 1
	return a;
} else if funcname == "indexYAt" {
	var xx = argument1;
	var yy = argument2;
	var a = floor((yy - objControll.top) / objControll.blockHeight);
	if a < 0 a = 0
	if a >= objControll.nrows a = objControll.nrows - 1
	return a
}