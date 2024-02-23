
// Player Movement Triggers

						
	var right_key = keyboard_check(vk_right) || keyboard_check( ord( "D" ));
	var left_key = keyboard_check(vk_left) || keyboard_check( ord( "A" ));
	var up_key = keyboard_check(vk_up) || keyboard_check( ord( "W" ));
	var down_key = keyboard_check(vk_down)|| keyboard_check( ord( "S" ));
	var shoot_key = mouse_check_button( mb_left ) || keyboard_check( ord( "E" ));
	var shop_key = keyboard_check_pressed( ord( "P" ) );
	
	
#region Player Movement
	var _horziKey =  right_key - left_key;
	var _vertKey = down_key - up_key;
	moveDir = point_direction( 0, 0, _horziKey, _vertKey );
	
	
	var _spd = 0;
	var _inputLevel = point_distance( 0, 0, _horziKey, _vertKey );
	_inputLevel	= clamp( _inputLevel, 0, 1 );
	_spd = moveSpd * _inputLevel;

		xspd = lengthdir_x(_spd, moveDir);
		yspd = lengthdir_y(_spd, moveDir);
  

// Collisions of entitys
	if place_meeting(x + xspd, y, obj_wall)
		{
			xspd = 0;
		}
	if place_meeting(x, y + yspd, obj_wall)
		{
			yspd = 0;
		}

// Pause player while teleport
	if instance_exists(obj_pauser) 
		{
			xspd = 0;
			yspd = 0;
		}
		#endregion



#region Damage Player
get_damaged(obj_zombie_rabbit);
#endregion



#region Sprite Control

	centerY = y + centerYOffset;
	
		//aim direction
		aimDir = point_direction( x, centerY, mouse_x, mouse_y);
		

//set sprite locations axis aswell as sprite collision fix
	face = round( aimDir/90 );
	if face == 4 { face = 0; }

	if xspd == 0 && yspd == 0
	{				
		image_index = 0;
	}
	
	
	sprite_index = sprite[face];


// move the player
	x += xspd;
	y += yspd;


depth = -bbox_bottom;
#endregion




#region Weapon Swap [will change to shop]
var _playerWeapons = global.PlayerWeapons;
	if shop_key
	{
		selectedWeapon += 1;
		if selectedWeapon >= array_length(_playerWeapons) { selectedWeapon = 0; }; 
		
		weapon = _playerWeapons[selectedWeapon];
		
	}
#endregion




#region Shoot Weapon
if shootTimer > 0 {	shootTimer -= 1; };
//shoot key
if shoot_key && shootTimer <= 0 
{
	shootTimer = weapon.cooldown;
	//create bullet
	var _xOffset = lengthdir_x( weapon.length + weaponOffsetDist, aimDir );
	var _yOffset = lengthdir_y( weapon.length + weaponOffsetDist, aimDir );
	
	var _spread = weapon.spread;
	var _spreadDiv = _spread / max( weapon.bulletNum-1, 1 );
	
	
	for ( var i = 0; i < weapon.bulletNum; i += 1 )
	{
		var _bulletInst = instance_create_depth(x + _xOffset, centerY + _yOffset, depth-100, weapon.bullet);
		with( _bulletInst ) 
		{
			dir = other.aimDir - _spread/2 + _spreadDiv*i;
			
			if dirFix == true 
			{					
				image_angle = dir;
			}
		}
		
	}
}
#endregion



