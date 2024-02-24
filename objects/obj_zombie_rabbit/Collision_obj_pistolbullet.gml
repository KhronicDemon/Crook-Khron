
with (instance_place(x, y, obj_zombie_rabbit)) {
   if (ds_list_find_index(other.list, id) == -1) {
      hp -= 10;
      ds_list_add(other.list, id);
   }
	 if (hp >= 0) {
	audio_play_sound(aDeath, 1, false);
	dead = true;		
	} else {
	instance_destroy(other)}
} 