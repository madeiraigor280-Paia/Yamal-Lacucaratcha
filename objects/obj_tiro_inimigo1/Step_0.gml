//Checando se eu sai por baixo da room
//if (y >= room_height + 50)
//{
//	instance_destroy();	
//}



if (y <= -32)
{
	instance_destroy()
}

if (x <= -32)
{
	instance_destroy()	
}
//Por baixo
if (y >= room_height + 50)
{
	instance_destroy()	
}


if (x >= room_width + 32)
{
	instance_destroy()	
}

dou_dano()
