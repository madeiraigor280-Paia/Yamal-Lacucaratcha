//// ======== STEP EVENT COMPLETO ========

//// --- Detecta colisões ---
//var outro = instance_place(x, y, obj_entidade);
//var outro_lista = ds_list_create();
//var quantidade = instance_place_list(x, y, obj_entidade, outro_lista, 0);



//// --- Adiciona inimigos à lista de dano ---
//for (var i = 0; i < quantidade; i++)
//{
//    var atual = outro_lista[| i ];
    
//    // Verifica se é uma instância válida e não é do mesmo tipo do pai
//    if (instance_exists(atual) && object_get_parent(atual.object_index) != object_get_parent(pai.object_index))
//    {
//        // ✅ Verifica se o alvo está invencível
//        if (atual.invencivel)
//        {
//            continue; // Pula este inimigo
//        }
        
//        // Evita duplicatas
//        var pos = ds_list_find_index(aplicar_dano, atual);
//        if (pos == -1)
//        {
//            ds_list_add(aplicar_dano, atual);
//        }
//    }
//}



//// --- Aplica dano ---
//var tam = ds_list_size(aplicar_dano);
//for (var i = 0; i < tam; i++)
//{
//    var outro = aplicar_dano[| i ];
    
//    if (instance_exists(outro) && outro.vida_atual > 0)
//    {
//        if (outro.delay <= 0)
//		{
//			outro.estado = "hit";
//			outro.image_index = 0;
//        }
//		outro.vida_atual -= dano;
		
//        if (object_get_parent(outro.object_index) == obj_inimigo_pai)
//        {
//            screenshake(2);
        
		
//			//Garantindo que o cara vai morrer, porque isso é meio importante
//			if (outro.vida_atual <= 0)
//			{
//				outro.estado = "dead";	
				
				
//			}
//		}
//    }
//}

//// --- Destroi as listas temporárias ---
//ds_list_destroy(outro_lista);

//// --- Lógica de destruição do objeto ---
//if (morrer)
//{
//    // Informa ao pai
//    if (pai)
//    {
//        pai.dano = noone;
//    }
    
//    // Destroi a lista de dano
//    if (ds_exists(aplicar_dano, ds_type_list))
//    {
//        ds_list_destroy(aplicar_dano);
//    }
    
//    // Destroi o objeto
//    instance_destroy();
//}
//else
//{
//    y = pai.y - pai.sprite_height/4;
    
//    // Se acertou alguém, se destrói
//    if (quantidade > 0)
//    {
//        // Informa ao pai
//        if (pai)
//        {
//            pai.dano = noone;
//        }
        
//        // Destroi a lista de dano
//        if (ds_exists(aplicar_dano, ds_type_list))
//        {
//            ds_list_destroy(aplicar_dano);
//        }
        
//        // Destroi o objeto
//        instance_destroy();
//    }
//}
dou_dano();

if (ja_bati)
{
	instance_destroy();	
}
//if (cooldown_morte <= 0)
//{
//	instance_destroy();	
//}

cooldown_morte--;