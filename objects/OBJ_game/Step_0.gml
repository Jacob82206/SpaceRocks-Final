if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case RM_STRT: 
			room_goto(RM_GM);
			break;
			
		case RM_WIN:
		case RM_GMAEOVER:	
			game_restart();
			break;
	}
}

if(room == RM_GM){
	if(audio_is_playing(msc_song)){
		audio_stop_sound(msc_song);
	}
	if(score >= 1000){
			room_goto(RM_WIN);
			audio_play_sound(sng_win, 1, false);
	}

	if(lives<= 0){
		if(audio_is_playing(msc_song)){
		audio_stop_sound(msc_song);
	}
		room_goto(RM_GMAEOVER);
		audio_play_sound(sng_GMOVER, 1, false);
	}
}