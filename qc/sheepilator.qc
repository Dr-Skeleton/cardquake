void(float dist) ai_walk;
void(string gibname, float dm) ThrowGib;
void(string gibname, float dm) ThrowHead;
void(vector org) spawn_tfog;

/*WEAPON_SHOTGUN is now WEAPON_SHEEPINATOR

embed transformative pellets into your victim's body. once
exposed to enough of this deadly buckshot, the victim is
transformed from their natural state into that of a sheep

crude, but it gets the job done
*/

//sheep will be tamed like the wild lion - loop anim + walk slowly

void() sheep_wander =
{
	ai_walk(4);
	self.frame++;
	self.think = sheep_wander;
	self.nextthink = time + 0.1;
}

//always gib - no need for a death anim

void() sheep_die =
{
	sound (self, CHAN_VOICE, "player/udeath.wav", 1, ATTN_NONE);
	sound (self, CHAN_AUTO, "bloodshot/sheep/sheepfly.wav", 1, ATTN_NONE);
	ThrowGib ("progs/gib1.mdl", self.health);
	ThrowGib ("progs/gib1.mdl", self.health);
	ThrowGib ("progs/gib1.mdl", self.health);
	ThrowGib ("progs/gib1.mdl", self.health);
	ThrowHead ("progs/gib1.mdl", self.health);
}

//pain method, not really needed but why not

void() sheepshriek =
{
	sound (self, CHAN_VOICE, "bloodshot/sheep/sheep2.wav", 1, ATTN_NONE);
}

//Turn enemy into sheep
//run this in the FireBullets method

void() shepherd =
{
	if (self.weapon == IT_SHOTGUN && (trace_ent.flags & FL_MONSTER) && trace_ent.health < 63 && trace_ent.model != "progs/bloodshot/sheepmis.mdl")
	{

		setmodel(trace_ent, "progs/bloodshot/sheepmis.mdl");
		spawn_tfog (trace_ent.origin);
		trace_ent.th_pain = sheepshriek;
		trace_ent.th_run = sheep_wander;
		if (trace_ent.flags & (FL_FLY))
		{
			trace_ent.flags = trace_ent.flags - FL_FLY;
			trace_ent.velocity = '0 0 5';
		}
		trace_ent.goalentity = world;
		trace_ent.enemy = world;
		trace_ent.th_missile = SUB_Null;
		trace_ent.th_melee = SUB_Null;
		trace_ent.th_die = sheep_die;
		trace_ent.think = trace_ent.th_run;
		setsize (trace_ent, '-20 -20 -17', '20 20 18');
		trace_ent.nextthink = time + 0.1;

	}
}
