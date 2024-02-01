variable "ovh_region" {
  type        = string
  description = "OVH region"
  default     = "gra"
}

variable "ovh_conf" {
  type = map(object({
    application_key    = string
    application_secret = string
    consumer_key       = string
    project_id         = string
  }))
  description = "OVH credentials"
}

variable "ovh_endpoint" {
  type        = string
  description = "OVH endpoint"
  default     = "ovh-eu"
}

variable "github_access_token" {
  type        = string
  description = "Github access token"
}

variable "github_org" {
  type        = string
  description = "Github organization"
}

variable "github_repo" {
  type        = string
  description = "Github repository"
}

variable "user_desc_prefix" {
  type        = string
  default     = "[TF] User created by s3 terraform script"
  description = "User description prefix"
}
