terraform {
  required_providers {
    ovh = {
      source = "ovh/ovh"
    }
  }
}

provider "ovh" {
  endpoint           = var.ovh_endpoint
  application_key    = var.ovh_conf[terraform.workspace].application_key
  application_secret = var.ovh_conf[terraform.workspace].application_secret
  consumer_key       = var.ovh_conf[terraform.workspace].consumer_key
}
