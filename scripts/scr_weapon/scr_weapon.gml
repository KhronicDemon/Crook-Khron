function draw_my_weapon() {
	var _xOffset = lengthdir_x( weaponOffsetDist, aimDir );
	var _yOffset = lengthdir_y( weaponOffsetDist, aimDir );

	var _weaponYscl = 1;
	if aimDir > 90 && aimDir < 270
	{
		_weaponYscl = -1;
	}

	draw_sprite_ext( weapon.sprite, 0, x + _xOffset, centerY + _yOffset, 1, _weaponYscl, aimDir, c_white, 1);

	}
		
		
function get_damaged_create( _hp = 10 ) {
	hp			=	_hp;
	damageList  =	ds_list_create();
}

/*
function get_damaged_cleanup() {
	ds_list_destroy(  damageList  )
}
	function get_damaged( _damageObj ) {
		if place_meeting( x, y, obj_zombie_rabbit )
		{
			var _instList = ds_list_create();	
			instance_place_list(x, y, obj_zombie_rabbit, _instList, false );
	
			var _listSize = ds_list_size( _instList );
	
			for( var i = 0; i < _listSize;  i++ )
	
		{
		var _inst = ds_list_find_value( _instList, i );	
		if ds_list_find_index( damageList, _inst ) = -1 
			{			
				global.hp -= _inst.damage;
				_inst.hitConfirm = true;
			}
		}	
		ds_list_destroy( _instList );
		}

		var _damageListSize = ds_list_size( damageList );	
		for( var i = 0; i < _damageListSize;  i++ )	
		{
			var _inst = ds_list_find_value( damageList, i );
			if !instance_exists( _inst ) || place_meeting(x, y, _inst)
			{
				ds_list_delete( damageList, i );
				i--;
				_damageListSize--;
			}
		}
}