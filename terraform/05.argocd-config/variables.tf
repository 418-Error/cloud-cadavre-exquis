variable "argocd_repositories_config" {
    description = "The configuration of the repositories to be added to ArgoCD"
    type = list(object({
        url = string
        username = string
        password = string
        name = string
    }))
}