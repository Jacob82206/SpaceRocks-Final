lives-=1;

audio_play_sound(sng_die, 1, false);

instance_destroy();

with(OBJ_game){
	alarm[1] = room_speed;

}
repeat(10){
	instance_create_layer(x,y,"Instances",Obj_Debris);
}
