// Controle du personnage

//Touche du controlleur
press_left = keyboard_check(vk_left);
press_right = keyboard_check(vk_right);
press_up = keyboard_check(vk_up);
press_down = keyboard_check(vk_down);
press_space = keyboard_check(vk_space);
press_alt = keyboard_check(vk_alt);

//Varriable ses du mouvement
var moverl = press_right - press_left;
var moveud = press_down - press_up;

//Modification de la vitesse de déplaement
xspd = moverl * movespd;
yspd = moveud * movespd;

//Collision X
if(x + xspd + 30 > window_get_width() || x + xspd - 30 < 0 )
{
	xspd = 0;
}

//Collision Y
if(y + yspd + 40 > window_get_height() || y + yspd - 40 < 0 )
{
	yspd = 0;
}

x = x + xspd;
y = y + yspd;

//Invincible et perte de vie quand touché
if(place_meeting(x , y , oEnemy) || place_meeting(x , y , oShoot_E_1) && invincible == false)
{
	global.hp = global.hp - 1;
	invincible = true;
	alarm[0] = 30;
}

//Tir
if(press_space && !shoot_delay)
{
	shoot_delay = true;
	alarm[1] = 10;
	instance_create_layer(x,y,"Player",oShoot_1);	
}

//Epee
if(press_alt && !shoot_delay)
{
	shoot_delay = true;
	instance_create_layer(x,y,"Player",oSword);
	image_angle = image_angle + 20;
	rot = true;
	
}
else if(image_angle % 360 == 0 && shoot_delay && rot)
{
	image_angle = 0;
	alarm[1] = 10;
	rot = false;
}
else if(image_angle != 0)
{
	image_angle = image_angle + 20;
}
