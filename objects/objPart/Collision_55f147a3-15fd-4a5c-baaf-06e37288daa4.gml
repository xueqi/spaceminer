/// @description 


if collision {
		objControll.part += 1
		if objControll.part == objControll.totalParts {
			objControll.exitItem.image_index = objControll.EXITOPEN
			star1.image_index = objControll.STAR_FULL
		}
		collision = false
		alarm_set(0, 1)
}