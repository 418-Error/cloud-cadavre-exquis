terraform {
  backend "s3" {
    bucket = "418erreur-tfstate-bucket-prod"
    key    = "rdb.tfstate"
    region = "fr-par"
    endpoints = {
     s3: "https://s3.fr-par.scw.cloud/"
    }
    skip_credentials_validation = true
    skip_requesting_account_id = true
    skip_region_validation      = true
    skip_metadata_api_check = true
    skip_s3_checksum = true
  }
}