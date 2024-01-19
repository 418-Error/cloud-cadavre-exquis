terraform {
  required_providers {
    flux = {
      source = "fluxcd/flux"
      version = "1.2.2"
    }
    github = {
      source  = "integrations/github"
      version = ">=5.18.0"
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
    url = "ssh://git@github.com/${var.github_org}/${var.github_repo}.git"
    ssh = {
      username    = "git"
      private_key = tls_private_key.flux.private_key_pem
    }
    branch = "master"
  }
}