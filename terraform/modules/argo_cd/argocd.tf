resource "kubernetes_namespace" "argocd" {
  metadata {
    name = "argocd"
  }
}

resource "helm_release" "argocd-chart"{
    name = "argocd"
    repository = "https://argoproj.github.io/argo-helm"
    chart = "argo-cd"
    namespace = kubernetes_namespace.argocd.metadata[0].name
    version = "6.7.1"
    create_namespace = true
    values = [
        file("${path.module}/values.yaml")
    ]
}