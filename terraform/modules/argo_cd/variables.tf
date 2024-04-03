variable "config_file" {
  description = "The path to the kubeconfig file"
  type = string
}
variable "argocd_host" {
  description = "value of the argocd host"
  type = string
}
variable "argocd_secret_tls" {
  description = "value of the argocd secret tls"
  type = string
}