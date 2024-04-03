module "argocd" {
  source = "../modules/argo_cd"
  config_file = "~/.kube/config"
  argocd_host = "https://argocd.example.com"
  argocd_secret_tls = "argocd-tls-secret"
}