/// @description 
if collision {
	if image_index == objControll.STONE {
		show_debug_message("SHOULD NOT GOT STONE NOW")
	
	} else if image_index == objControll.EXIT {
		show_debug_message("GOT EXIT")
		// if all parts collected, open the exit
		if objControll.part == objControll.totalParts {
			image_index = objControll.EXITOPEN
		}
	} else if image_index == objControll.EXITOPEN {
		room_goto(roomLevel2)
	}
	else if image_index == objControll.GOLD {
		show_debug_message("GOT GOLD")
		objControll.gold += 100
		collision = false
		alarm_set(0, 1)
	}
	else if image_index == objControll.TREASURE {
		show_debug_message("GOT TREASURE")
		objControll.gold += 1000
		collision = false
		alarm_set(0, 1)
	}
	else if image_index == objControll.PART1 {
		show_debug_message("GOT PART1")
		objControll.part += 1
		collision = false
		alarm_set(0, 1)
	} 
	else if image_index == objControll.PART2 { 
		show_debug_message("GOT PART2")
		objControll.part += 1
		collision = false
		alarm_set(0, 1)
	}
	
}