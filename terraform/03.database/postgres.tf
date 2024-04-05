module scaleway_rdb_instance {
  source = "../modules/rdb"
  user_name = var.user_name
  vpc_private_network_id = local.vpc_state.vpc_private_network_id
  database_name = "register"
}

