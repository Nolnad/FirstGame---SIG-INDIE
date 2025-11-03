var on_ground = place_meeting(x,y+1,oSolid)
if jump_delay <= 0 and on_ground {
	
	//angle = 90+ irandom_range(-angle_range,angle_range)
	var side = sign(x - oPlayer.x)
	player_dir = point_direction(x,y,oPlayer.x,oPlayer.y)
	angle = player_dir+(45*-side)
	hspd = lengthdir_x(jump_force,angle)
	vspd = lengthdir_y(jump_force,angle)
	
	jump_delay = jump_delay_max;	
}
hspd = approach(hspd,0,fric)
vspd += grv;
jump_delay = approach(jump_delay,0,1); // same as -= 1

var hspd_final = hspd + kb_hspd
var vspd_final = vspd + kb_vspd
// Collision Code
if(place_meeting(x+hspd_final,y,oSolid))
{
	while(!place_meeting(x+sign(hspd_final),y,oSolid))
	{
		x+= sign(hspd_final);
	}
	hspd_final = 0;
	hspd = 0;
	kb_hspd = 0;
}
x += hspd_final;

if(place_meeting(x,y+vspd_final,oSolid))
{
	while(!place_meeting(x,y+sign(vspd_final),oSolid))
	{
		y += sign(vspd_final);
	}
	vspd_final = 0
	vspd = 0;
	kb_vspd = 0;
}
y += vspd_final;

    kb_hspd = approach(kb_hspd,0,0.4);
    kb_vspd = approach(kb_vspd,0,0.4);

if hp <= 0 {
	instance_destroy();	
}