terraform {
  required_providers {
    scaleway = {
      source  = "scaleway/scaleway"
      version = "2.38.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.0"
    }
  }
}
