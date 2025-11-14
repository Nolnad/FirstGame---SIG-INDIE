if !surface_exists(my_surf) {
    my_surf = surface_create(room_width,room_height);
}

surface_set_target(my_surf)
    draw_clear_alpha(c_black,0 )
    draw_sprite_ext(sPlayer_1,0,mouse_x,mouse_y,2,2,0,c_white,1)
    //draw_circle(mouse_x,mouse_y,32,true)
surface_reset_target()

draw_surface(my_surf,0,0)

