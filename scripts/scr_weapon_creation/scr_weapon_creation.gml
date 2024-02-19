function Create_Weapon( _sprite = spr_pistol, _weaponLength = 0, _bulletObj = obj_pistolbullet, _cooldown = 1, _bulletNum = 1, _spread = 0 ) constructor 
 {
	sprite = _sprite;
	length = _weaponLength;
	bullet = _bulletObj;
	cooldown = _cooldown;
	bulletNum = _bulletNum;
	spread = _spread;
 }
 
 //Player Inventory
 global.PlayerWeapons = array_create( 0 );
 
 //Weapon List
 global.weaponList = {
	 
	crossbow : new Create_Weapon (
		spr_crossbow,
		sprite_get_bbox_right(spr_crossbow) - sprite_get_xoffset( spr_crossbow ),
		obj_bulletbow,
	    50,
		1,
		0
	),
	
	pistol : new Create_Weapon (
		spr_pistol,
		sprite_get_bbox_right( spr_pistol ) - sprite_get_xoffset( spr_pistol ),
		obj_pistolbullet,
		25,
		1,
		0
	),
	
	lazer : new Create_Weapon(
		spr_lazer,
		sprite_get_bbox_right( spr_lazer ) - sprite_get_xoffset ( spr_lazer ),
		obj_lazerbullet,
		16,
		3,
		45
	)
 }
 
 
 
 
 