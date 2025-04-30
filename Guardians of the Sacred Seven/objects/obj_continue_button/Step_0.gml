if (global.snd_id != noone && !audio_is_playing(global.snd_id)) {
    visible = true;
    if (image_alpha < 1) {
        image_alpha += 0.05; // Adjust speed here
    }
} else {
    image_alpha = 0; // Stay hidden until ready
}