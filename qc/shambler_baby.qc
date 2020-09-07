/*
==============================================================================

SHAMBLER

==============================================================================
*/

$cd id1/models/shams
$origin 0 0 24
$base base
$skin base


void() sham_bab_stand1	=[	$stand1,	sham_bab_stand2	] {ai_stand(); };//self.enemy = find(world,classname, "player"); self.enemy = self.enemy.enemy; self.goalentity = self.enemy;};
void() sham_bab_stand2	=[	$stand2,	sham_bab_stand3	] {ai_stand();};
void() sham_bab_stand3	=[	$stand3,	sham_bab_stand4	] {ai_stand();};
void() sham_bab_stand4	=[	$stand4,	sham_bab_stand5	] {ai_stand();};
void() sham_bab_stand5	=[	$stand5,	sham_bab_stand6	] {ai_stand();};
void() sham_bab_stand6	=[	$stand6,	sham_bab_stand7	] {ai_stand();};
void() sham_bab_stand7	=[	$stand7,	sham_bab_stand8	] {ai_stand();};
void() sham_bab_stand8	=[	$stand8,	sham_bab_stand9	] {ai_stand();};
void() sham_bab_stand9	=[	$stand9,	sham_bab_stand10] {ai_stand();};
void() sham_bab_stand10	=[	$stand10,	sham_bab_stand11] {ai_stand();};
void() sham_bab_stand11	=[	$stand11,	sham_bab_stand12] {ai_stand();};
void() sham_bab_stand12	=[	$stand12,	sham_bab_stand13] {ai_stand();};
void() sham_bab_stand13	=[	$stand13,	sham_bab_stand14] {ai_stand();};
void() sham_bab_stand14	=[	$stand14,	sham_bab_stand15] {ai_stand();};
void() sham_bab_stand15	=[	$stand15,	sham_bab_stand16] {ai_stand();};
void() sham_bab_stand16	=[	$stand16,	sham_bab_stand17] {ai_stand();};
void() sham_bab_stand17	=[	$stand17,	sham_bab_stand1	] {ai_stand();};


void() sham_bab_walk1		=[      $walk1,        sham_bab_walk2 ] {ai_walk(10);};
void() sham_bab_walk2       =[      $walk2,        sham_bab_walk3 ] {ai_walk(9);};
void() sham_bab_walk3       =[      $walk3,        sham_bab_walk4 ] {ai_walk(9);};
void() sham_bab_walk4       =[      $walk4,        sham_bab_walk5 ] {ai_walk(5);};
void() sham_bab_walk5       =[      $walk5,        sham_bab_walk6 ] {ai_walk(6);};
void() sham_bab_walk6       =[      $walk6,        sham_bab_walk7 ] {ai_walk(12);};
void() sham_bab_walk7       =[      $walk7,        sham_bab_walk8 ] {ai_walk(8);};
void() sham_bab_walk8       =[      $walk8,        sham_bab_walk9 ] {ai_walk(3);};
void() sham_bab_walk9       =[      $walk9,        sham_bab_walk10] {ai_walk(13);};
void() sham_bab_walk10      =[      $walk10,       sham_bab_walk11] {ai_walk(9);};
void() sham_bab_walk11      =[      $walk11,       sham_bab_walk12] {ai_walk(7);};
void() sham_bab_walk12      =[      $walk12,       sham_bab_walk1 ] {ai_walk(7);
if (random() > 0.8)
	sound (self, CHAN_VOICE, "bloodshot/shambler/sidle.wav", 1, ATTN_IDLE);};

void() sham_bab_run1       =[      $run1,        sham_bab_run2      ] {ai_run(20);

/*
if (self.enemy == self.owner)
{
	local entity head;

	head = findradius(self.origin, 700);

	while(head)
	{
		if (head != self.owner && head.health && (head.flags & FL_MONSTER))
		{
			self.enemy = head;
			self.goalentity = self.enemy;
		}
		head = head.chain;
	}
}

if (self.enemy.classname == "player")
{
	self.goalentity = self.owner.enemy;
	self.enemy = self.owner.enemy;
}*/

self.monster_lifetime++;

if (self.monster_lifetime >= 15)
	T_Damage(self, self, self, 999);

};
void() sham_bab_run2       =[      $run2,        sham_bab_run3      ] {ai_run(24);};
void() sham_bab_run3       =[      $run3,        sham_bab_run4      ] {ai_run(20);};
void() sham_bab_run4       =[      $run4,        sham_bab_run5      ] {ai_run(20);};
void() sham_bab_run5       =[      $run5,        sham_bab_run6      ] {ai_run(24);};
void() sham_bab_run6       =[      $run6,        sham_bab_run1      ] {ai_run(20);
if (random() > 0.8)
	sound (self, CHAN_VOICE, "bloodshot/shambler/sidle.wav", 1, ATTN_IDLE);
};

void() sham_bab_smash1     =[      $smash1,       sham_bab_smash2    ] {
sound (self, CHAN_VOICE, "bloodshot/shambler/melee1.wav", 1, ATTN_NORM);
ai_charge(2);};
void() sham_bab_smash2     =[      $smash2,       sham_bab_smash3    ] {ai_charge(6);};
void() sham_bab_smash3     =[      $smash3,       sham_bab_smash4    ] {ai_charge(6);};
void() sham_bab_smash4     =[      $smash4,       sham_bab_smash5    ] {ai_charge(5);};
void() sham_bab_smash5     =[      $smash5,       sham_bab_smash6    ] {ai_charge(4);};
void() sham_bab_smash6     =[      $smash6,       sham_bab_smash7    ] {ai_charge(1);};
void() sham_bab_smash7     =[      $smash7,       sham_bab_smash8    ] {ai_charge(0);};
void() sham_bab_smash8     =[      $smash8,       sham_bab_smash9    ] {ai_charge(0);};
void() sham_bab_smash9     =[      $smash9,       sham_bab_smash10   ] {ai_charge(0);};
void() sham_bab_smash10    =[      $smash10,      sham_bab_smash11   ] {
local vector	delta;
local float 	ldmg;

	if (!self.enemy)
		return;
	ai_charge(0);

	delta = self.enemy.origin - self.origin;

	if (vlen(delta) > 100)
		return;
	if (!CanDamage (self.enemy, self))
		return;

	ldmg = (random() + random() + random()) * 40;
	T_Damage (self.enemy, self, self, ldmg);
	sound (self, CHAN_VOICE, "bloodshot/shambler/smack.wav", 1, ATTN_NORM);

	SpawnMeatSpray (self.origin + v_forward*16, crandom() * 100 * v_right);
	SpawnMeatSpray (self.origin + v_forward*16, crandom() * 100 * v_right);
};
void() sham_bab_smash11    =[      $smash11,      sham_bab_smash12   ] {ai_charge(5);};
void() sham_bab_smash12    =[      $smash12,      sham_bab_run1	   ] {ai_charge(4);};

void() sham_swingr1;


void() sham_bab_swingl1	=[      $swingl1,      sham_bab_swingl2   ] {
sound (self, CHAN_VOICE, "bloodshot/shambler/melee2.wav", 1, ATTN_NORM);
ai_charge(5);};
void() sham_bab_swingl2 =[      $swingl2,      sham_bab_swingl3   ] {ai_charge(3);};
void() sham_bab_swingl3 =[      $swingl3,      sham_bab_swingl4   ] {ai_charge(7);};
void() sham_bab_swingl4 =[      $swingl4,      sham_bab_swingl5   ] {ai_charge(3);};
void() sham_bab_swingl5 =[      $swingl5,      sham_bab_swingl6   ] {ai_charge(7);};
void() sham_bab_swingl6 =[      $swingl6,      sham_bab_swingl7   ] {ai_charge(9);};
void() sham_bab_swingl7 =[      $swingl7,      sham_bab_swingl8   ] {ai_charge(5); ShamClaw(150);};
void() sham_bab_swingl8 =[      $swingl8,      sham_bab_swingl9   ] {ai_charge(4);};
void() sham_bab_swingl9 =[      $swingl9,      sham_bab_run1  ] {
ai_charge(8);
if (random()<0.5)
	self.think = sham_swingr1;
};

void() sham_bab_swingr1	=[      $swingr1,      sham_bab_swingr2   ] {
sound (self, CHAN_VOICE, "bloodshot/shambler/melee1.wav", 1, ATTN_NORM);
ai_charge(1);};
void() sham_bab_swingr2	=[      $swingr2,      sham_bab_swingr3   ] {ai_charge(8);};
void() sham_bab_swingr3 =[      $swingr3,      sham_bab_swingr4   ] {ai_charge(14);};
void() sham_bab_swingr4 =[      $swingr4,      sham_bab_swingr5   ] {ai_charge(7);};
void() sham_bab_swingr5 =[      $swingr5,      sham_bab_swingr6   ] {ai_charge(3);};
void() sham_bab_swingr6 =[      $swingr6,      sham_bab_swingr7   ] {ai_charge(6);};
void() sham_bab_swingr7 =[      $swingr7,      sham_bab_swingr8   ] {ai_charge(6); ShamClaw(-150);};
void() sham_bab_swingr8 =[      $swingr8,      sham_bab_swingr9   ] {ai_charge(3);};
void() sham_bab_swingr9 =[      $swingr9,      sham_bab_run1  ] {ai_charge(1);
ai_charge(10);
if (random()<0.5)
	self.think = sham_bab_swingl1;
};

void() sham_bab_melee =
{
	local float chance;

	chance = random();
	if (chance > 0.6 || self.health == 600)
		sham_bab_smash1 ();
	else if (chance > 0.3)
		sham_bab_swingr1 ();
	else
		sham_bab_swingl1 ();
};


//============================================================================

void() CastLightning_Mini =
{
	local	vector	org, dir;

	if (self.enemy == self.owner)
	{
		self.goalentity = world;
		return;
	}

	self.effects = self.effects | EF_MUZZLEFLASH;

	ai_face ();

	org = self.origin + '0 0 10';

	dir = self.enemy.origin + '0 0 16' - org;
	dir = normalize (dir);

	traceline (org, self.origin + dir*200, TRUE, self);

	WriteByte (MSG_BROADCAST, SVC_TEMPENTITY);
	WriteByte (MSG_BROADCAST, TE_LIGHTNING1);
	WriteEntity (MSG_BROADCAST, self);
	WriteCoord (MSG_BROADCAST, org_x);
	WriteCoord (MSG_BROADCAST, org_y);
	WriteCoord (MSG_BROADCAST, org_z);
	WriteCoord (MSG_BROADCAST, trace_endpos_x);
	WriteCoord (MSG_BROADCAST, trace_endpos_y);
	WriteCoord (MSG_BROADCAST, trace_endpos_z);

	LightningDamage (org, trace_endpos, self, 10);
};


void() sham_bab_magic1     =[      $magic1,       sham_bab_magic2    ] {ai_face();
	sound (self, CHAN_WEAPON, "bloodshot/shambler/sattck1.wav", 1, ATTN_NORM);
};
void() sham_bab_magic2     =[      $magic2,       sham_bab_magic3    ] {ai_face();};
void() sham_bab_magic3     =[      $magic3,       sham_bab_magic4    ] {ai_face();self.nextthink = self.nextthink + 0.2;
local entity o;

self.effects = self.effects | EF_MUZZLEFLASH;
ai_face();
self.owner = spawn();
o = self.owner;
setmodel (o, "progs/s_light.mdl");
setorigin (o, self.origin - '0 0 50');
o.angles = self.angles;
o.nextthink = time + 0.7;
o.think = SUB_Remove;
};
void() sham_bab_magic4     =[      $magic4,       sham_bab_magic5    ]
{
self.effects = self.effects | EF_MUZZLEFLASH;
self.owner.frame = 1;
};
void() sham_bab_magic5     =[      $magic5,       sham_bab_magic6    ]
{
self.effects = self.effects | EF_MUZZLEFLASH;
self.owner.frame = 2;
};
void() sham_bab_magic6     =[      $magic6,       sham_bab_magic9    ]
{
remove (self.owner);
CastLightning_Mini();
sound (self, CHAN_WEAPON, "bloodshot/shambler/sboom.wav", 1, ATTN_NORM);
};
void() sham_bab_magic9     =[      $magic9,       sham_bab_magic10   ]
{CastLightning_Mini();};
void() sham_bab_magic10    =[      $magic10,      sham_bab_magic11   ]
{CastLightning_Mini();};
void() sham_bab_magic11    =[      $magic11,      sham_bab_magic12   ]
{
if (skill == 3)
	CastLightning_Mini();
};
void() sham_bab_magic12    =[      $magic12,      sham_bab_run1	   ] {};



void() sham_bab_pain1       =[      $pain1, sham_bab_pain2      ] {};
void() sham_bab_pain2       =[      $pain2, sham_bab_pain3      ] {};
void() sham_bab_pain3       =[      $pain3, sham_bab_pain4      ] {};
void() sham_bab_pain4       =[      $pain4, sham_bab_pain5      ] {};
void() sham_bab_pain5       =[      $pain5, sham_bab_pain6      ] {};
void() sham_bab_pain6       =[      $pain6, sham_bab_run1      ] {};

void(entity attacker, float damage)	sham_bab_pain =
{
	sound (self, CHAN_VOICE, "bloodshot/shambler/shurt2.wav", 1, ATTN_NORM);

	if (self.health <= 0)
		return;		// allready dying, don't go into pain frame

	if (random()*400 > damage)
		return;		// didn't flinch

	if (self.pain_finished > time)
		return;
	self.pain_finished = time + 2;

	sham_bab_pain1 ();
};


//============================================================================

void() sham_bab_death1      =[      $death1,       sham_bab_death2     ] {};
void() sham_bab_death2      =[      $death2,       sham_bab_death3     ] {};
void() sham_bab_death3      =[      $death3,       sham_bab_death4     ] {self.solid = SOLID_NOT;};
void() sham_bab_death4      =[      $death4,       sham_bab_death5     ] {};
void() sham_bab_death5      =[      $death5,       sham_bab_death6     ] {};
void() sham_bab_death6      =[      $death6,       sham_bab_death7     ] {};
void() sham_bab_death7      =[      $death7,       sham_bab_death8     ] {};
void() sham_bab_death8      =[      $death8,       sham_bab_death9     ] {};
void() sham_bab_death9      =[      $death9,       sham_bab_death10    ] {};
void() sham_bab_death10     =[      $death10,      sham_bab_death11    ] {};
void() sham_bab_death11     =[      $death11,      sham_bab_death11    ] {};


void() sham_bab_die =
{
// check for gib
	if (self.health < -60)
	{
		sound (self, CHAN_VOICE, "player/udeath.wav", 1, ATTN_NORM);
		ThrowHead ("progs/bloodshot/h_shams_mini.mdl", self.health);
		ThrowGib ("progs/gib1.mdl", self.health);
		ThrowGib ("progs/gib1.mdl", self.health);
		ThrowGib ("progs/gib1.mdl", self.health);
		return;
	}

// regular death
	sound (self, CHAN_VOICE, "bloodshot/shambler/sdeath.wav", 1, ATTN_NORM);
	sham_bab_death1 ();
};

//============================================================================


/*QUAKED monster_shambler_baby (1 0 0) (-32 -32 -24) (32 32 64) Ambush
*/


void() monster_shambler_baby =
{


	self.solid = SOLID_SLIDEBOX;
	self.movetype = MOVETYPE_STEP;
	setmodel (self, "progs/bloodshot/shambler_mini.mdl");

	setsize (self, '-20 -20 -20', '16 16 16');


	self.faction = F_FRIENDLY;

	self.health = 1;

	self.th_stand = sham_bab_stand1;
	self.th_walk = sham_bab_walk1;
	self.th_run = sham_bab_run1;
	self.th_die = sham_bab_die;
	self.th_melee = sham_bab_melee;
	self.th_missile = sham_bab_magic1;
	self.th_pain = sham_bab_pain;

	walkmonster_start();



};
