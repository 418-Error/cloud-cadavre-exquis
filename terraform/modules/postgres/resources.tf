resource "scaleway_rdb_database" "database" {
  instance_id    = scaleway_rdb_instance.instance.id
  name           = "database"
  region         = var.region
}

resource "random_password" "db_password" {
  length  = 16
  special = true
}

resource "scaleway_secret" "db_password" {
  name        = "db-password"
  description = "database password"
  tags        = ["env=${terraform.workspace}"]
}

resource "scaleway_secret_version" "db_password_version1" {
  description = "secret version 1"
  secret_id   = scaleway_secret.db_password.id
  data        = random_password.db_password.result
}

resource "scaleway_rdb_instance" "instance" {
  name           = "instance-database"
  node_type      = var.node_type
  engine         = var.engine
  is_ha_cluster  = false
  disable_backup = false
  user_name      = var.user_name
  password       = random_password.db_password.result
  volume_type    = "lssd"
  private_network {
    pn_id = var.vpc_private_network_id
    enable_ipam = true
  }
}
