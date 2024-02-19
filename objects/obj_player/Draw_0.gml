
	// draw weapon behind player run before draw_self();
	if aimDir >= 0 && aimDir < 180 
	{
		draw_my_weapon();	
	}
	//draw player
		draw_self();
	//draw weapon
	if aimDir >= 180 && aimDir <= 360 
	{		
		draw_my_weapon();
	
	}
	
	draw_text(x, y,"HP:" + string(hp));