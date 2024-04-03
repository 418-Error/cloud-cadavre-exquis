resource "argocd_repository_credentials" "argocd_private_repository" {
    for_each =  {
        for repo, value in var.argocd_repositories_config : repo => value
    }
    url = each.value.url
    username = each.value.username
    password = each.value.password
}

resource "argocd_repository" "argocd_private_repository" {
    for_each =  {
        for repo, value in var.argocd_repositories_config : repo => value
    }
    repo = each.value.url
    type = "git"
    name =  each.value.name
}