/// @description 


if enabled and canMove and (!moving) {
	var nextx = idxx
	var nexty = idxy
	
	if mouse_check_button(mb_left) {
			nextx = F("indexXAt", mouse_x, mouse_y);
			nexty = F("indexYAt", mouse_x, mouse_y);
	}
	else if keyboard_check(vk_left) {
		// move left
		nextx -= 1
	} 
	else if keyboard_check(vk_right) {
		// move right
		nextx += 1
	}
	else if keyboard_check(vk_up) {
		// move up
		nexty -= 1
	}
	else if keyboard_check(vk_down) {
		// move down
		nexty += 1
	}
	if nextx < 0 nextx = 0
	if nextx >= objControll.ncols nextx = objControll.ncols - 1
	if nexty < 0 nexty = 0
	if nexty >= objControll.ncols nexty = objControll.ncols - 1
	
	if nextx == idxx and abs(nexty - idxy) == 1 {
		moving = true
	}
	if nexty == idxy and abs(nextx - idxx) == 1 {
		moving = true
	}
	if moving {
		var nextobj = F("itemAt", nexty, nextx)
		if nextobj > 0 {
			if not instance_exists(nextobj) {
				F("removeItemAt", nexty, nextx)
				nextobj = 0
			}
		}
		if objControll.fuel <= 0 {
			moving = false;
			
		}
		else if nextobj <= 0 or objControll.current_util == objControll.BOMB or nextobj.image_index != objControll.STONE {
			dstX = F("x", nexty, nextx)
			dstY = F("y", nexty, nextx)
			idxx = nextx
			idxy = nexty
			//show_debug_message("dstX: " + string(dstX) + ", dstY: " + string(dstY))
			spd = original_spd
			objControll.fuel -= 1
		} else {
			moving = false;
		}
	}
	
}

if moving {
	var toDst = point_distance(x, y, dstX, dstY);
	if toDst > max(0.5, spd) {
		var angle = point_direction(x, y, dstX, dstY)
		if abs(angle - 180) < 45 {
			// to left
			angle = 0
			image_xscale = -1
		} else {
			image_xscale = 1
			
		}
		image_angle = angle
		//show_debug_message("Angle: " + string(angle))
		move_towards_point(dstX, dstY, spd)
		if (toDst < spd) spd /=2 
	} else {
		speed = 0
		moving = false
		
		show_debug_message("Arrive at: x:" + string(x) + ", y:" + string(y))
		
	}

}