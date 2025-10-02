if (instance_exists(oPlayer)) follow = oPlayer;

xTo = follow.x
yTo = follow.y

x += (xTo - x)/smooth;
y += (yTo - y)/smooth;

camera_set_view_pos(cam,x-viewwidthhalf,y-viewheighthalf);