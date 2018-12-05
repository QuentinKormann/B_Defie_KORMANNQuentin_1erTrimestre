image_angle = image_angle + 20;

x = oPlayer.x;
y = oPlayer.y;

if (image_angle % 360 == 0)
{
	instance_destroy();	
}