if melhoria == true{
	y = pontoy + sign(tempo * frequencia) * amplitude;
	tempo++;

}
else
{
	timer_vivo++;
	
	
	if (timer_vivo >= tempo_vivo)
	{
		instance_destroy()	
	}
}