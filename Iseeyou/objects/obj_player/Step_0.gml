//camera movement
//dir = point_direction(x,y, mouse_x, mouse_y);
image_angle = dir;
var _diff = angle_difference(point_direction(x,y, mouse_x, mouse_y), dir);
dir += _diff * 0.1;

var _right = keyboard_check(ord("D"));
var _left = keyboard_check(ord("A"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));

var _xinput = _right - _left;
var _yinput = _down - _up;

move_and_collide(_xinput * my_speed, _yinput * my_speed, obj_block);
