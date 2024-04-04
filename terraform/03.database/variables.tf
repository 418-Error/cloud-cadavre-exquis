variable "user_name" {
  description = "The username to use for the database"
  default = "postgres_user"
  type        = string
}

variable "access_key" {
    description = "The access key for Scaleway"
    type        = string
}

variable "secret_key" {
    description = "The secret key for Scaleway"
    type        = string
}

variable "project_id" {
    description = "The project id for Scaleway"
    type        = string
}