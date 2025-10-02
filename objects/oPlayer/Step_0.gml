key_left =  keyboard_check(vk_left) or keyboard_check(ord("A"))
key_right = keyboard_check(vk_right)|| keyboard_check(ord("D"))
key_jump  = keyboard_check(vk_space)|| keyboard_check(ord("Z"))
var on_ground = place_meeting(x,y+1,oSolid)

dir_h = key_right - key_left

hspd = dir_h * walk_spd

vspd += grv;

if key_jump and on_ground
{
	vspd += jump_spd;
}

if(place_meeting(x+hspd,y,oSolid))
{
	while(!place_meeting(x+sign(hspd),y,oSolid))
	{
		x+= sign(hspd);
	}
	hspd = 0;
}
x += hspd;

if(place_meeting(x,y+vspd,oSolid))
{
	while(!place_meeting(x,y+sign(vspd),oSolid))
	{
		y += sign(vspd);
	}
	vspd = 0
}
y += vspd
 