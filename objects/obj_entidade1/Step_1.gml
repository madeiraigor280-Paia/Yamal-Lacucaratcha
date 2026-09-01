// Olhando para o lado certo
if (velh != 0) xscale = sign(velh);
image_xscale = xscale;

// Exibindo meu estado quando o usuário mandar
if (position_meeting(mouse_x, mouse_y, id)) 
{
	if (mouse_check_button_released(mb_left))
		mostra_estado = !mostra_estado;
}

// ✅ CORREÇÃO AQUI: evita erro com room_speed
//image_speed = (img_spd / room_speed)
//image_speed = img_spd / 30 * global.vel_mult; // ajuste para 60 se sua sala for 60 FPS