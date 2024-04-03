data "terraform_remote_state" "kapsule_state" {
  backend = "s3"
  workspace = terraform.workspace
  config = {
    bucket = "418erreur-tfstate-bucket-${terraform.workspace}"
    key = "kapsule.tfstate"
    region = "fr-par"
    endpoints = {
        s3 = "https://s3.fr-par.scw.cloud"
    }
    skip_credentials_validation = true
    skip_requesting_account_id = true
    skip_region_validation      = true
    skip_metadata_api_check = true
    skip_s3_checksum = true
  }
}