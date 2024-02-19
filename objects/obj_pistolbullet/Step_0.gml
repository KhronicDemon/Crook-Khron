    //move 
	xspd =	lengthdir_x( spd, dir );
	yspd = lengthdir_y( spd, dir );
	
	x += xspd;
	y += yspd;
	
	if hitConfirm = true && enemyDestroy == true {
		destory = true;
	}
	
	
	if destory == true { instance_destroy(); }
		
	
	//collision
	if place_meeting(x + xspd, y, obj_wall) || place_meeting(x + xspd, y, obj_zombie_rabbit ) { 
			destory = true;
		};
		
		if point_distance( xstart, ystart, x, y) > maxDist
		{
			destory = true;
		}
		
