if (instance_exists(obj_arma_player))
{
			if (obj_arma_player.ja_clonei_na_fase = true or obj_arma_player.clonei = false)
			obj_arma_player.ja_clonei_na_fase = false
			obj_arma_player.clonei = false
			obj_arma_player.cooldown = 0;
			
			//global.tiro_clone = true
			
}