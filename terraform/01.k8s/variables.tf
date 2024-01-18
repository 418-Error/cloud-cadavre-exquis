variable ovh_region {
  type = string
  description = "OVH region"
  default = "gra"
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