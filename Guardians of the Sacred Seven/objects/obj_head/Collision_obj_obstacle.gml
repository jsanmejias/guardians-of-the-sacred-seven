if(health > 0){
health -= 10;
}

if(health == 0){
game_restart();
}


move_speed *= 0.75;
instance_destroy(other);
