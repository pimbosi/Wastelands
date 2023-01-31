hp_percentage = ((hp/maxHp)*100);


if (room = Fase_01){
	level_ost = snd_lvl_1_1;
}

if (music1_started = false){
	alarm[0] = 120;
	music1_started = true;
}

if(hp_percentage <= 60){
	lowpass.bypass = false;
	lowpass.cutoff = 220*hp_percentage;
}

if(hp_percentage >= 50){
	lowpass.bypass = true;
}
if (game_over = true){
	audio_stop_sound(level_ost);
	music1_started = false;
}

