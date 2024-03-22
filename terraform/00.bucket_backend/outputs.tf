output "bucket_access_key" {
  value = scaleway_iam_api_key.api_key.access_key
  sensitive = true
}

output "bucket_secret_key" {
  value = scaleway_iam_api_key.api_key.secret_key
  sensitive = true
}