//camera movement
//dir = point_direction(x,y, mouse_x, mouse_y);
image_angle = dir;
var _diff = angle_difference(point_direction(x,y, mouse_x, mouse_y), dir);
dir += _diff * 0.1;

//get inputs
shootkey = mouse_check_button(mb_left);
//controller stuff
var _gp = global.gamepad_main;
if (_gp != undefined)
{
	var right = gamepad_axis_value(_gp, gp_axislh) >0;
    var left = gamepad_axis_value(_gp, gp_axislh) <0
    var up = gamepad_axis_value(_gp, gp_axislv) <0
    var down = gamepad_axis_value(_gp, gp_axislv) >0
	
	if (right)
{
	xSpeed = moveSpeed;
	image_speed = 1;
}

if (left)
{
	xSpeed = -moveSpeed;
	image_speed = 1;
}

if (up)
{
	ySpeed = -moveSpeed;
	image_speed = 1;
}

if (down)
{
	ySpeed = moveSpeed;
	image_speed = 1;
}

if (!right && !left)
{
	xSpeed = 0;
}

if (!up && !down)
{
	ySpeed = 0;
}

if (!right && !left && !up && !down)
{
	xSpeed = 0;
	ySpeed = 0;
	image_index = 0;
	image_speed = 0;
}

//Horizontal collisions
if (place_meeting(x + xSpeed, y, obj_solid))
{
	xSpeed = 0;
}

//Vertical collisions
if (place_meeting(x, y + ySpeed, obj_solid))
{
	ySpeed = 0;
}

x += xSpeed;
y += ySpeed;

	shootkey = gamepad_button_check_pressed(_gp, gp_shoulderrb);
}
 
//player movement
#region 

var right = keyboard_check(vk_right);
var left = keyboard_check(vk_left);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);

if (right)
{
	xSpeed = moveSpeed;
	image_speed = 1;
}

if (left)
{
	xSpeed = -moveSpeed;
	image_speed = 1;
}

if (up)
{
	ySpeed = -moveSpeed;
	image_speed = 1;
}

if (down)
{
	ySpeed = moveSpeed;
	image_speed = 1;
}

if (!right && !left)
{
	xSpeed = 0;
}

if (!up && !down)
{
	ySpeed = 0;
}

if (!right && !left && !up && !down)
{
	xSpeed = 0;
	ySpeed = 0;
	image_index = 0;
	image_speed = 0;
}

//Horizontal collisions
if (place_meeting(x + xSpeed, y, obj_solid))
{
	xSpeed = 0;
}

//Vertical collisions
if (place_meeting(x, y + ySpeed, obj_solid))
{
	ySpeed = 0;
}

x += xSpeed;
y += ySpeed;

#endregion
//sprite control
#region
//player aiming
centerY = y + centerYOffset;
aimDir = point_direction(x, centerY, mouse_x, mouse_y);
 
	var inputx = gamepad_axis_value(0, gp_axisrh);
	var inputy = gamepad_axis_value(0, gp_axisrv);
	var cursorx = window_mouse_get_x() + inputx * 30;
	var cursory = window_mouse_get_y() + inputy * 30;
	window_mouse_set( cursorx, cursory);
 
//make sure player is facing correct direction
face = round(aimDir/90);
if face == 4 {face = 0;};
 
//animate
if xspd = 0 && yspd = 0
{
	image_index = 0;	
}
 
#endregion
 
//shoot the weapon
if shootTimer > 0
{
	shootTimer--;	
}
if shootkey && shootTimer <=0
{
	//reset the timer
	shootTimer = shootCooldown;
	//create the bullet
	var _bulletInst = instance_create_depth(x, centerY, depth-100, bulletObj);
	//change bullet direction
	with(_bulletInst)
	{
		dir = other.aimDir;	
	}
}
