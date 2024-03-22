data "terraform_remote_state" "vpc_state" {
  backend = "s3"
  workspace = terraform.workspace
  config = {
    bucket = "tfstate-bucket-${terraform.workspace}"
    key = "vpc.tfstate"
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