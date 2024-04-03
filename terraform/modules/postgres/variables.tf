variable "engine" {
  description = "The database engine to use"
  type        = string
  default     = "PostgreSQL-15"
}

variable "user_name" {
  description = "The username to use for the database"
  type        = string
}

variable "node_type" {
  description = "The type of node to use for the database"
  type        = string
  default     = "db-dev-s"
}

variable "region" {
  description = "The region to use for the database"
  type        = string
  default     = "fr-par"
}

variable "vpc_private_network_id" {
  description = "The ID of the private network to use for the database"
  type        = string
}