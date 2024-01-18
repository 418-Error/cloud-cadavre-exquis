output "access_key" {
  description = "the access key that have been created by the terraform script"
  value       = module.ovh_bucket_tfstate.access_key
}

output "secret_key" {
  description = "the secret key that have been created by the terraform script"
  value       = module.ovh_bucket_tfstate.secret_key
  sensitive   = true
}