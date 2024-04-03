resource "scaleway_object_bucket" "tfstate-bucket" {
  name       = "418erreur-tfstate-bucket-${terraform.workspace}"
  project_id = var.project_id
  tags = {
    key   = "env"
    value = "${terraform.workspace}"
  }
}

