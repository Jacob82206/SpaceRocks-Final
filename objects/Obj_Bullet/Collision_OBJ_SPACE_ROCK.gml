score +=10;
audio_play_sound(sng_die, 1, false);
instance_destroy();

with(other){
		instance_destroy();
		
		if(sprite_index == Sprite_rock_3){
			repeat(2){
			var new_asteroid = instance_create_layer(x,y, "Instances",OBJ_SPACE_ROCK);
			new_asteroid.sprite_index = Sprite_rock_2;
		}
	}else if (sprite_index == Sprite_rock_2){
			repeat(2){
			var new_asteroid = instance_create_layer(x,y, "Instances",OBJ_SPACE_ROCK);
			new_asteroid.sprite_index = Sprite_rock_4;
		
			}
}

repeat(10){
	instance_create_layer(x,y,"Instances",Obj_Debris)
	}
}

