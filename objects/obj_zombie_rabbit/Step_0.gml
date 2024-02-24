		
		direction = point_direction(x, y, obj_player.x, obj_player.y);
		if place_meeting(x + xspd, y, obj_wall)
		{
			xspd = 0;
		}
		if place_meeting(x, y + yspd, obj_wall)
		{
			yspd = 0;
		}
		speed =  random_range(0.5, 1);
		
		

// Collisions of entitys

	if (direction > 90 && direction < 270) {
				image_xscale = -1;
			} else {	
				image_yscale = 1;
	}




