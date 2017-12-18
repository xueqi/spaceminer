/// @description 


if enabled and canMove and (!moving) {
	var nextx = idxx
	var nexty = idxy
	if keyboard_check(vk_left) {
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
	if nextx != idxx and nextx >= 0 and nextx < objControll.ncols {
		moving = true
	}
	if nexty != idxy and nexty >= 0 and nexty < objControll.nrows {
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
		if nextobj <= 0 or nextobj.image_index != objControll.STONE {
			dstX = F("x", nexty, nextx)
			dstY = F("y", nexty, nextx)
			idxx = nextx
			idxy = nexty
			//show_debug_message("dstX: " + string(dstX) + ", dstY: " + string(dstY))
			spd = original_spd
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