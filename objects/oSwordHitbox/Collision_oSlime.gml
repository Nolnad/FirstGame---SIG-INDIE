if ds_list_find_index(enemy_list,other.id) != -1 
	exit;

ds_list_add(enemy_list,other.id)

var collis_dir = point_direction(x,y,other.x,other.y)
other.kb_hspd += lengthdir_x(5,collis_dir) 
other.kb_vspd += lengthdir_y(5,collis_dir)

other.hp -= dmg
other.flash = 7