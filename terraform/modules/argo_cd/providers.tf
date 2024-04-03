terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.27.0"
    }
  }
}

provider "kubernetes" {
  # Configuration options
  config_path = var.config_file
 
}

provider "helm" {
  kubernetes {
    config_path = var.config_file
  }
}