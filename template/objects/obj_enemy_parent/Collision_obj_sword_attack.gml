/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0303AC56
instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 63854CEB
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "4"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "size" "1"
/// @DnDArgument : "color" "$FF0921BC"
effect_create_above(4, x + 0, y + 0, 1, $FF0921BC & $ffffff);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 774FD03F
/// @DnDArgument : "soundid" "snd_baddie_defeated"
/// @DnDSaveInfo : "soundid" "snd_baddie_defeated"
audio_play_sound(snd_baddie_defeated, 0, 0, 1.0, undefined, 1.0);