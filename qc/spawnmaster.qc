void() monster_tarbaby_baby;

void() spawn_spawner = 
{
	self.classname = "monster_tarbaby";
	
	self.netname = "monster_tarbaby_baby";
	
	self.origin = self.origin + '0 0 10';
	self.think = monster_tarbaby_baby;
	self.nextthink = time;
}