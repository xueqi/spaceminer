/// @description 


if collision {
	if image_index == objControll.STONE {
		if objControll.current_util == objControll.BOMB {
			objControll.current_util = objControll.no_util
			alarm_set(0, 1)
		}
		show_debug_message("SHOULD NOT GOT STONE NOW")
	
	} else if image_index == objControll.EXIT {
		show_debug_message("GOT EXIT")
		// if all parts collected, open the exit

	} else if image_index == objControll.EXITOPEN {
		room_goto(roomLevelComplete)
	}
	else if image_index == objControll.GOLD {
		show_debug_message("GOT GOLD")
		objControll.gold += 100
		collision = false
		if objControll.gold > 1000 star2.image_index = objControll.STAR_FULL
		alarm_set(0, 1)
	}
	else if image_index == objControll.TREASURE {
		show_debug_message("GOT TREASURE")
		objControll.gold += 1000
		star3.image_index = objControll.STAR_FULL
		if objControll.gold > 1000 star2.image_index = objControll.STAR_FULL
		collision = false
		alarm_set(0, 1)
	}
	else if image_index == objControll.PART1 {
		show_debug_message("GOT PART1")
		objControll.part += 1
		if objControll.part == objControll.totalParts {
			objControll.exitItem.image_index = objControll.EXITOPEN
			star1.image_index = objControll.STAR_FULL
		}
		collision = false
		alarm_set(0, 1)
	} 
	else if image_index == objControll.PART2 { 
		show_debug_message("GOT PART2")
		objControll.part += 1
		collision = false
		alarm_set(0, 1)
		if objControll.part == objControll.totalParts {
			objControll.exitItem.image_index = objControll.EXITOPEN
			star1.image_index = objControll.STAR_FULL
		}
	} else if image_index = objControll.BOMB {
		objControll.current_util = objControll.BOMB
		collision = false
		alarm_set(0, 1)
	}
	
}