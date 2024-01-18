variable "ovh_public_cloud_project_id" {
  type = string
}

variable "region" {
  type    = string
  description = "OVH region"
}

variable "s3_endpoint" {
  type    = string
  description = "S3 endpoint"
  default = "https://s3.gra.io.cloud.ovh.net"
}

variable "user_desc_prefix" {
  type    = string
  description = "User description prefix"
  default = "[TF] User created by s3 terraform script"
}

variable "bucket_name" {
  type    = string
  description = "Bucket name"
  default = "tf-state"
}