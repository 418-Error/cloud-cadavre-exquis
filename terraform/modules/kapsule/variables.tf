resource "random_pet" "cluster_name" {
    length = 2
}


variable "cluster_name" {
  nullable = true
  description = "The name of the cluster"
  type = string
}

variable "kubernetes_version" {
  default = "1.29.1"
  description = "The version of Kubernetes to use in the cluster"
  type = string
}

variable "private_network_id" {
  description = "The ID of the private network in which the cluster will be created"
  type = string
}

variable "node_pool" {
    description = "The node pool to create in the cluster"
    type = object({
        name = string
        size = number
        min_size = number
        max_size = number
        node_type = string 
        tags = list(string)
    })
    default = {
        name = "main-pool"
        size = 1
        min_size = 1
        max_size = 3
        node_type = "DEV1-S"
        tags = [
        ]
    } 
}