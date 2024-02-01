terraform {
  backend "s3" {
    bucket = "418erreur-prod-bucket"
    key    = "terraform.tfstate"
    region = "gra"
    # sbg or any activated high performance storage region
    skip_requesting_account_id  = true
    skip_credentials_validation = true
    skip_region_validation      = true
    skip_s3_checksum            = true
    endpoints                   = { s3 = "https://s3.gra.io.cloud.ovh.net/" }
  }
}
