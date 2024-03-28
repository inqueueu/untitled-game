////movement

//right_key = keyboard_check(vk_right);
//left_key = keyboard_check(vk_left);
//up_key = keyboard_check(vk_up);
//down_key = keyboard_check(vk_down);

//xspd = (right_key - left_key) * move_spd;
//yspd = (down_key - up_key) * move_spd;

//x += xspd;
//y += yspd;

////collision
////if statement is true, stop movememnt!
//if place_meeting( x + xspd, y, obj_wall) == true
//	{
//		xspd = 0;
//	}
//if place_meeting( x, y + yspd, obj_wall) == true
//	{
//		yspd = 0;
//	}

x += hsp //moving horizontally
y += vsp //moving vertically
hsp=hsp*drag //friction
vsp=vsp*drag //friction

	if keyboard_check(vk_right)
	{
		hsp=walk_spd 
	}
	if keyboard_check(vk_left)
{
	 hsp=-walk_spd 
	}
	if keyboard_check(vk_down)
{
	 vsp=-walk_spd 
	}
		if keyboard_check(vk_up)
{
	 vsp=walk_spd 
	}

//collision
	if instance_place(x, y+vsp, obj_wall) //if a collision is coming up at the distance that is x+hsp
{
	// ! means not
	while !instance_place(x, y+sign(vsp), obj_wall) //but it's not collided yet
	{
		y+=sign(vsp) //move one pixel until there is no more hsp.
	}
	vsp=0
}

if instance_place(x+hsp, y, obj_wall) //if a collision is coming up at the distance that is x+hsp
{
	// ! means not
	while !instance_place(x+sign(hsp), y, obj_wall) //but it's not collided yet
	{
		x+=sign(hsp) //move one pixel until there is no more hsp.
	}
	hsp=0
}
