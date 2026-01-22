moveSpeed = 2;
xSpeed = 0;
ySpeed = 0;

//Map movement for multiple keys
keyboard_set_map(ord("D"), vk_right);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("W"), vk_up);	
keyboard_set_map(ord("S"), vk_down);

mask_index = sprite_index;

player_health = 10;

// mouse follow
dir = 0;

//bullet movement variables
moveDir = 0;
moveSpd = 2;
xspd = 0;
yspd = 0;
 
//sprite control
centerYOffset = -5;
centerY = y + centerYOffset;
 
weaponOffsetDist = 4;
aimDir = 0;
 
//weapon stuff
shootTimer = 0;
shootCooldown = 75;
bulletObj = Bullet;