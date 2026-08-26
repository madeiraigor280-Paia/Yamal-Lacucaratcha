if (coletado)
{
	if (instance_exists(obj_portal))
	{
		obj_portal.pode_iniciar = true	
	}
	
	instance_destroy();	
}