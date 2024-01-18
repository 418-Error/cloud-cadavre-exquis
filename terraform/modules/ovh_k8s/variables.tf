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

variable version {
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
    type = string
    description = "Number of nodes"
    default = 1
}

# Cluster & Pool variable

variable service_name {
  type = string
}