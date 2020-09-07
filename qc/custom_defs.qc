.float monster_lifetime;
.float faction;
float F_FRIENDLY = 1;
float F_HOSTILE = 0;

entity monster_target;


void() precache_shambweapon =
{
	precache_sound ("shambler/sattck1.wav");
	precache_sound ("shambler/sboom.wav");
	precache_sound ("shambler/sdeath.wav");
	precache_sound ("shambler/shurt2.wav");
	precache_sound ("shambler/sidle.wav");
	precache_sound ("shambler/ssight.wav");
	precache_sound ("shambler/melee1.wav");
	precache_sound ("shambler/melee2.wav");
	precache_sound ("shambler/smack.wav");
	
	//mod stuff
	precache_model ("progs/bloodshot/shambler_mini.mdl");
	precache_model ("progs/bloodshot/h_shams_mini.mdl");
	
	precache_model ("progs/bloodshot/v_hand.mdl");
	
	precache_model ("progs/s_light.mdl");
	precache_model ("progs/h_shams.mdl");
	precache_model ("progs/bolt.mdl");
	
	precache_sound ("bloodshot/shambler/sattck1.wav");
	precache_sound ("bloodshot/shambler/sboom.wav");
	precache_sound ("bloodshot/shambler/sdeath.wav");
	precache_sound ("bloodshot/shambler/shurt2.wav");
	precache_sound ("bloodshot/shambler/sidle.wav");
	precache_sound ("bloodshot/shambler/ssight.wav");
	precache_sound ("bloodshot/shambler/melee1.wav");
	precache_sound ("bloodshot/shambler/melee2.wav");
	precache_sound ("bloodshot/shambler/smack.wav");
	
	precache_sound ("bloodshot/shambler/ssight.wav");
}


void() precache_tarweapon =
{
	precache_model2 ("progs/tarbaby.mdl");

	precache_sound2 ("bloodshot/spawn.wav");
	precache_sound2 ("blob/death1.wav");
	precache_sound2 ("blob/hit1.wav");
	precache_sound2 ("blob/land1.wav");
	precache_sound2 ("blob/sight1.wav");
}

void() precache_sheepilator =
{
	precache_model ("progs/bloodshot/sheepmis.mdl");
	
	precache_sound ("bloodshot/sheep/gbfire.wav");
	precache_sound ("bloodshot/sheep/sheep2.wav");
	precache_sound ("bloodshot/sheep/sheepfly.wav");

}
