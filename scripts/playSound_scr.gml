/// plays a sound
var snd = argument[irandom(argument_count-1)]; // choose sound
var play = audio_play_sound(snd,1,false); // play sound and set local var
//audio_sound_gain(play,global.volume,0); //Set this sound to the global volume
//audio_sound_pitch(play,global.pitch); //change pitch
