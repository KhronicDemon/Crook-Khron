if(!dead) {
	audio_play_sound(aDeath, 1, false);
	dead = true;		
	instance_destroy(other);
}