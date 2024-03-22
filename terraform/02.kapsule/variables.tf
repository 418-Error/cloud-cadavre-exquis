variable "project_id" {
    description = "The ID of the project in which the bucket will be created"
    type = string
}

variable "access_key" {
    description = "The access key of the Scaleway account"
    type = string
}

variable "secret_key" {
    description = "The secret key of the Scaleway account"
    type = string
}

variable "region" {
    description = "The region in which the bucket will be created"
    type = string
    default = "fr-par"
}

variable "kubernetes_version" {
  default = "1.29.1"
  type = string
  description = "The version of Kubernetes to use in the cluster"
}