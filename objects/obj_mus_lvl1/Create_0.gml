//criando ost bus
ost = audio_emitter_create();
ost_bus = audio_bus_create();
audio_emitter_bus(ost, ost_bus);

lowpass = audio_effect_create(AudioEffectType.LPF2);
lowpass.q = 1;
ost_bus.effects[0] = lowpass;

music1_started = false;
music1_ispaused = false;
