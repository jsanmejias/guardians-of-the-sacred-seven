var bg_sprite = noone;
var snd = noone;

// Choose the correct sprite and sound based on the previous level
switch (global.current_room) {
    case rm_level_one:
        bg_sprite = educational_room_buffalo;
        snd = snd_buffalo;
        break;
    case rm_level_two:
        bg_sprite = educational_room_bear;
        snd = snd_bear;
        break;
    case rm_level_three:
        bg_sprite = educational_room_eagle;
        snd = snd_eagle;
        break;
    case rm_level_four:
        bg_sprite = educational_room_turtle;
        snd = snd_turtle;
        break;
    case rm_level_five:
        bg_sprite = educational_room_wolf;
        snd = snd_wolf;
        break;
    case rm_level_six:
        bg_sprite = educational_room_sabe;
        snd = snd_sabe;
        break;
    case rm_level_seven:
        bg_sprite = educational_room_beaver;
        snd = snd_beaver;
        break;
}

// Create or get the background layer
var bg_layer_id;

if (layer_exists("Background_Layer")) {
    bg_layer_id = layer_get_id("Background_Layer");
} else {
    bg_layer_id = layer_create(-100, "Background_Layer");
}

// Just place the sprite at (0, 0) with no scaling
if (bg_sprite != noone) {
    layer_sprite_create(bg_layer_id, 0, 0, bg_sprite);
}

// Play the corresponding audio
if (snd != noone) {
	audio_play_sound(snd_coin, 5, false);
    audio_play_sound(snd, 10, false);
    audio_sound_gain(snd, 8, 10);
}