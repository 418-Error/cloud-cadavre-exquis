terraform {
  required_providers {
    flux = {
      source = "fluxcd/flux"
      version = "1.2.2"
    }
  }
}

provider "flux" {
  kubernetes = {
    host = var.cluster_host
    client_certificate = var.cluster_client_certificate
    cluster_ca_certificate = var.cluster_ca_certificate
    client_key = var.cluster_client_key
  }
  git = {
    url = var.git_url
  }
}