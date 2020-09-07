
void()	tbaby_remove =
{
	T_RadiusDamage (self, self, 120, world);

	sound (self, CHAN_VOICE, "blob/death1.wav", 1, ATTN_NORM);
	self.origin = self.origin - 8*normalize(self.velocity);

	WriteByte (MSG_BROADCAST, SVC_TEMPENTITY);
	WriteByte (MSG_BROADCAST, TE_TAREXPLOSION);
	WriteCoord (MSG_BROADCAST, self.origin_x);
	WriteCoord (MSG_BROADCAST, self.origin_y);
	WriteCoord (MSG_BROADCAST, self.origin_z);
	
	BecomeExplosion ();
};


void()	tbabyb_run1	=[	$run1,		tbabyb_run2	] {ai_face();self.monster_lifetime++;};
void()	tbabyb_run2	=[	$run2,		tbabyb_run3	] {ai_face();self.monster_lifetime++;};
void()	tbabyb_run3	=[	$run3,		tbabyb_run4	] {ai_face();};
void()	tbabyb_run4	=[	$run4,		tbabyb_run5	] {ai_face();if (self.monster_lifetime >= 6) self.th_die();};
void()	tbabyb_run5	=[	$run5,		tbabyb_run6	] {ai_face();};
void()	tbabyb_run6	=[	$run6,		tbabyb_run7	] {ai_face();};
void()	tbabyb_run7	=[	$run7,		tbabyb_run8	] {ai_face();};
void()	tbabyb_run8	=[	$run8,		tbabyb_run9	] {ai_face();};
void()	tbabyb_run9	=[	$run9,		tbabyb_run10	] {ai_face();};
void()	tbabyb_run10	=[	$run10,		tbabyb_run11	] {ai_face();};
void()	tbabyb_run11	=[	$run11,		tbabyb_run12	] {ai_run(2);};
void()	tbabyb_run12	=[	$run12,		tbabyb_run13	] {ai_run(2);};
void()	tbabyb_run13	=[	$run13,		tbabyb_run14	] {ai_run(2);};
void()	tbabyb_run14	=[	$run14,		tbabyb_run15	] {ai_run(2);};
void()	tbabyb_run15	=[	$run15,		tbabyb_run16	] {ai_run(2);};
void()	tbabyb_run16	=[	$run16,		tbabyb_run17	] {ai_run(2);};
void()	tbabyb_run17	=[	$run17,		tbabyb_run18	] {ai_run(2);self.th_die();};
void()	tbabyb_run18	=[	$run18,		tbabyb_run19	] {ai_run(2);};
void()	tbabyb_run19	=[	$run19,		tbabyb_run20	] {ai_run(2);};
void()	tbabyb_run20	=[	$run20,		tbabyb_run21	] {ai_run(2);};
void()	tbabyb_run21	=[	$run21,		tbabyb_run22	] {ai_run(2);};
void()	tbabyb_run22	=[	$run22,		tbabyb_run23	] {ai_run(2);};
void()	tbabyb_run23	=[	$run23,		tbabyb_run24	] {ai_run(2);};
void()	tbabyb_run24	=[	$run24,		tbabyb_run25	] {ai_run(2);};
void()	tbabyb_run25	=[	$run25,		tbabyb_run1	] {ai_run(2);};



void()	tbabyb_jump5;

void()	tbabyB_fly1		=[	$fly1,	tbabyB_fly2	] { };
void()	tbabyB_fly2		=[	$fly2,	tbabyB_fly3	] {};
void()	tbabyB_fly3		=[	$fly3,	tbabyB_fly4	] {};
void()	tbabyB_fly4		=[	$fly4,	tbabyB_fly1	] {
self.cnt = self.cnt + 1;
if (self.cnt > 3)
	self.th_die();
if (self.cnt == 4)
{
//dprint ("spawn hop\n");
self.th_missile = self.th_die;
self.th_melee = self.th_die;
//tbaby_jump5 ();
}
};


void()	tbabyb_jump1		=[	$jump1,	tbabyb_jump2		] {ai_face();};
void()	tbabyb_jump2		=[	$jump2,	tbabyb_jump3		] {ai_face();};
void()	tbabyb_jump3		=[	$jump3,	tbabyb_jump4		] {ai_face();};
void()	tbabyb_jump4		=[	$jump4,	tbabyb_jump5		] {ai_face();};
void()	tbabyb_jump5		=[	$jump5,	tbabyb_jump6		]
{	
	self.cnt++;
	if (self.cnt > 3)
		self.th_die();
	self.movetype = MOVETYPE_BOUNCE;
	self.touch = Tar_JumpTouch;
	makevectors (self.angles);
	self.origin_z = self.origin_z + 1;
	self.velocity = v_forward * 600 + '0 0 200';
	self.velocity_z = self.velocity_z + random()*150;
	if (self.flags & FL_ONGROUND)
		self.flags = self.flags - FL_ONGROUND;
	self.cnt = 0;
	
	
};
void()	tbabyb_jump6	=[	$jump6,tbaby_fly1	] {};


/*QUAKED monster_tarbaby (1 0 0) (-16 -16 -24) (16 16 24) Ambush
*/
void() monster_tarbaby_baby =
{
	if (deathmatch)
	{
		remove(self);
		return;
	}
	
	self.solid = SOLID_SLIDEBOX;
	self.movetype = MOVETYPE_STEP;

	setmodel (self, "progs/tarbaby.mdl");

	setsize (self, '-16 -16 -24', '16 16 40');
	self.health = 80;
	
	self.faction = F_FRIENDLY;

	self.th_stand = tbaby_stand1;
	self.th_walk = tbaby_walk1;
	self.th_run = tbabyb_run1;
	self.th_missile = tbabyb_jump1;
	self.th_melee = self.th_die;
	self.th_die = tbaby_die1;
	
	walkmonster_start ();
};