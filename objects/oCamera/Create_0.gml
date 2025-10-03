follow = noone;

cam = camera_create_view(0,0,global.ideal_width,global.ideal_height);
view_set_camera(0,cam);

viewwidthhalf  = camera_get_view_width(cam) *0.5;
viewheighthalf = camera_get_view_height(cam)*0.5;

xTo = room_width *0.5;
yTo = room_height*0.5;

camera_set_view_size(cam,global.ideal_width,global.ideal_height);

smooth = 7;