


with objControll {
	ds_grid_set(mapObjects, 0, 3, STONE);
	ds_grid_set(mapObjects, 0, 6, STONE);
	ds_grid_set(mapObjects, 0, 8, STONE);
	ds_grid_set(mapObjects, 1, 0, STONE);
	ds_grid_set(mapObjects, 1, 1, STONE);
	ds_grid_set(mapObjects, 1, 3, STONE);
	ds_grid_set(mapObjects, 1, 8, STONE);
	ds_grid_set(mapObjects, 2, 1, STONE);
	ds_grid_set(mapObjects, 2, 4, STONE);
	ds_grid_set(mapObjects, 2, 6, STONE);
	ds_grid_set(mapObjects, 3, 2, STONE);
	ds_grid_set(mapObjects, 3, 9, STONE);
	ds_grid_set(mapObjects, 4, 3, STONE);
	ds_grid_set(mapObjects, 4, 5, STONE);
	ds_grid_set(mapObjects, 5, 1, STONE);
	ds_grid_set(mapObjects, 5, 3, STONE);
	ds_grid_set(mapObjects, 5, 5, STONE);
	ds_grid_set(mapObjects, 5, 6, STONE);
	ds_grid_set(mapObjects, 5, 8, STONE);
	ds_grid_set(mapObjects, 6, 1, STONE);
	ds_grid_set(mapObjects, 6, 5, STONE);
	ds_grid_set(mapObjects, 6, 6, STONE);
	ds_grid_set(mapObjects, 6, 9, STONE);
	ds_grid_set(mapObjects, 0, 9, PART1);
	ds_grid_set(mapObjects, 3, 0, PART2);
	ds_grid_set(mapObjects, 2, 2, GOLD);
	ds_grid_set(mapObjects, 6, 8, TREASURE);
	ds_grid_set(mapObjects, 6, 2, EXIT);
}

for (var i = 0; i < objControll.nrows; ++i) {
	for (var j = 0; j < objControll.ncols; ++j) {
		var idx = ds_grid_get(objControll.mapObjects, i, j);
		if idx > 0 {
			var item = instance_create_layer(F("x", i, j), F("y", i, j), "layerItems", objItem);
			item.image_index = idx
			if idx == objControll.EXIT objControll.exitItem = item
			ds_grid_set(objControll.mapObjects, i, j, item)
		}
	}
}