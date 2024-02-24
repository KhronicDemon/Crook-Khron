	global.hp = 100;
	get_damaged_create(global.hp); // number of HP for Player

	moveDir = 0; // direction
	moveSpd = 1; // speed
	xspd = 0; // up - down [speed]
	yspd = 0; // left - right [speed]



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
	
	
	
	
	