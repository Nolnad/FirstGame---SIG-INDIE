left_click = mouse_check_button_pressed(mb_left)

// sets up angle of swrod
point_dir = point_direction(x,y,mouse_x,mouse_y)
sword_angle = point_dir + offset + over_shoot*side

// Lerps offets to target positions
over_shoot = lerp(over_shoot,0,0.07)
offset = lerp(offset,offset_target*side,0.98)

// sets angle of sword and sid of sword
image_yscale = -side
image_angle	= sword_angle

if left_click and swing_delay <= 0 {
    
    side = side*-1
    over_shoot = over_shoot_max
	swing_delay = swing_delay_max
	
	with instance_create_depth(x,y,depth,oSwordHitbox) {
		image_angle = other.point_dir
        image_yscale = -other.side
	}
} 

swing_delay-=1;

x = owner.x
y = owner.y

