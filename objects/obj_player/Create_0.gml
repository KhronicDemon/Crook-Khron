	
	get_damaged_create(100);
	
	moveDir = 0;
	moveSpd = 1;
	xspd = 0;
	yspd = 0;



//aiming control
	centerYOffset = -12;
	centerY = y + centerYOffset;
	
	weaponOffsetDist = 4;
	aimDir = 0;

	sprite[RIGHT] = spr_player_right;
	sprite[LEFT] = spr_player_left;
	sprite[UP] = spr_player_up;
	sprite[DOWN] = spr_player_down;
	face = DOWN;
	
	shootTimer = 0;

	//addweapons 
	array_push(	global.PlayerWeapons, global.weaponList.crossbow );
	array_push(	global.PlayerWeapons, global.weaponList.pistol );
	array_push( global.PlayerWeapons, global.weaponList.lazer );
	
	
	selectedWeapon = 0;
	weapon = global.PlayerWeapons[selectedWeapon];
	
	
	
	
	