// Get Inputs
key_left  =  keyboard_check(vk_left) or keyboard_check(ord("A"))
key_right = keyboard_check(vk_right)|| keyboard_check(ord("D"))
key_jump  = keyboard_check(vk_space)|| keyboard_check(ord("Z"))
key_jump_pressed  = keyboard_check_pressed(vk_space)|| keyboard_check_pressed(ord("Z"))

hp = clamp(hp,0,hp_max);

var on_ground = place_meeting(x,y+1,oSolid)

if on_ground {
	jumps = jumps_max;	
	jump_buffer = 0;
}

dir_h = key_right - key_left

hspd = dir_h * walk_spd

vspd += grv;

if key_jump_pressed and jumps > 0 and jump_buffer <= 0
{
	repeat(7)
		instance_create_depth(x+irandom_range(-6,6),y+irandom_range(-2,2)+8,depth,oDust)
	
	jump_buffer = jump_buffer_max
	jumps -= 1
	vspd = 0;
	vspd += jump_spd;
}
jump_buffer--;
//approach(jump_buffer,0,1)

// Collision Code
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
y += vspd;
 
// Change Sprite
if hspd == 0
{
	
	sprite_index = sPlayer
} else  {
	image_xscale = sign(hspd)
	sprite_index = sPlayerRun 
}

if !on_ground 
	sprite_index = sPlayerJump
