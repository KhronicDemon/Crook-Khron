
#region If Player is in room Run == Collision Added Here
	if instance_exists( obj_player )
	{
		xspd = lengthdir_x( spd, dir );
		yspd = lengthdir_y( spd, dir );		
		
		dir = point_direction( x, y, obj_player.x, obj_player.y );
	
	if xspd > 0 {	face = -1;	};
	if xspd < 0 {	face =  1;	};	

	
	if place_meeting(x + xspd, y, obj_wall) || place_meeting(x + xspd, y, obj_enmy_parent)
		{
			xspd = 0;	
		}
	if place_meeting(x, y + yspd, obj_wall) || place_meeting(x, y + yspd, obj_enmy_parent)
		{
			yspd = 0;
		}
	}
#endregion



#region collison

#endregion



x += xspd;
y += yspd;

event_inherited();

