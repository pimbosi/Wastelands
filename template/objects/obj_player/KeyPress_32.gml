/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 22675FB2
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "sword"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_sword_attack"
/// @DnDSaveInfo : "objectid" "obj_sword_attack"
var sword = instance_create_layer(x + 0, y + 0, "Instances", obj_sword_attack);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5F440F50
/// @DnDArgument : "expr" "image_xscale"
/// @DnDArgument : "var" "sword.image_xscale"
sword.image_xscale = image_xscale;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 634BD4D7
/// @DnDArgument : "soundid" "snd_sword_swing"
/// @DnDSaveInfo : "soundid" "snd_sword_swing"
audio_play_sound(snd_sword_swing, 0, 0, 1.0, undefined, 1.0);