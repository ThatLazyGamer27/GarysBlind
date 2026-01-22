//bullet movement
xspd = lengthdir_x(spd, dir);
yspd = lengthdir_y(spd, dir);
 
x += xspd;
y += yspd;
 
//bullet collision
if place_meeting(x, y, obj_block)
{
	destroy = true;	
}

 
//bullet out of range 
if point_distance(xstart, ystart, x, y) > maxDist
{
	destroy = true;	
}
//destroy
if destroy == true
{
	instance_destroy();	
}