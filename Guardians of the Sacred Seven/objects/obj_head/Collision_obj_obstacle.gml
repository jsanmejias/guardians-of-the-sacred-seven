//When collisioning with an obstacle this code runs

//If health(progress) is greater than 0 this means we are alive
//Thus we can reduce progress, avoiding going lower than 0, just in case
//Off course reducing points to lower progress bar
if(health > 0){
	health -= 10;
}

//If the case is that reducing the progress by 10 it goes to 0, then the game restart
if(health == 0){
	game_restart();
}

//After all that if game does not restart it means we are still alive
//Then we reduce the speed value by 25%, making the game actually 25% faster
move_speed *= 0.75;
instance_destroy(other);
audio_play_sound( snd_bang, 10, false );