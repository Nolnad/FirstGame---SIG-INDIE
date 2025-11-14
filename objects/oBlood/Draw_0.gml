if !surface_exists(global.blood_surf) {
	global.blood_surf = surface_create(room_width,room_height)	
}

if (!surface_exists(local_surface))
{
	local_surface = surface_create(room_width, room_height)
}


surface_set_target(local_surface);
	draw_clear_alpha(c_black,0)
	
	var lay_id = layer_get_id("WORLD");
	var map_id = layer_tilemap_get_id(lay_id);
	draw_tilemap(map_id,0,0);
	gpu_set_colorwriteenable(true,true,true,false)
	
	draw_surface(global.blood_surf,0,0)
	
	gpu_set_colorwriteenable(true,true,true,true)
surface_reset_target();

draw_surface(local_surface,0,0)