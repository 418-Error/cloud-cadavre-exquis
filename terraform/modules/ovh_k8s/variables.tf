# Cluster variables

variable cluster-name {
    type = string
    description = "Cluster name"
}

variable ovh_region {
    type = string
    description = "OVH region"
    default = "gra"
}

variable ovh_cluster_region {
    type = string
    description = "OVH region"
    default = "GRA7"
}

variable cluster_version {
    type = string
    description = "Cluster version"
}

# Pool variables

variable pool-name {
    type = string
    description = "Pool name"
}

variable flavor_name {
    type = string
    description = "Flavour name"
    default = "b2-7"
}

variable nodes {
    type = number
    description = "Number of nodes"
    default = 1
}

# Cluster & Pool variable

variable service_name {
  type = string
}

variable ovh_conf {
  type = map(object({
    application_key = string
    application_secret = string
    consumer_key = string
    project_id = string
    }))
  description = "OVH credentials"
}

variable ovh_endpoint {
  type = string
  description = "OVH endpoint"
  default = "ovh-eu"
}