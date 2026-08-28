if (ds_exists(alvos_acertados, ds_type_list))
{
    ds_list_destroy(alvos_acertados);
}

instance_destroy(bola_colisao)