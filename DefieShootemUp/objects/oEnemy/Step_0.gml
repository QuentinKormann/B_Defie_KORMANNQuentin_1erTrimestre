// Controle ennemie

y = y + movespd;

if(y + movespd > window_get_height() + 40)
{
	instance_destroy();	
}

if(!shoot_delay)
{
	instance_create_layer(x , y , "Enemy" , oShoot_E_1);
	shoot_delay = true;
	alarm[0] = 60;
}