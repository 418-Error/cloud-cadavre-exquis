resource "kubernetes_namespace" "argocd" {
  metadata {
    name = "argocd"
  }
}

resource "helm_release" "argocd-chart" {
    name = "argocd"
    repository = "https://argoproj.github.io/argo-helm"
    chart = "argo-cd"
    namespace = kubernetes_namespace.argocd.metadata[0].name
    version = "6.7.1"
    create_namespace = true
    values = [
        file("${path.module}/values.yaml")
    ]
    set {
        name = "server.ingress.hosts[0]"
        value = var.argocd_host
    }
    set {
        name = "server.ingress.tls[0].hosts[0]"
        value = var.argocd_host
    }
    set{
        name = "server.ingress.tls[0].secretName"
        value = var.argocd_secret_tls
    }
    set {
        name = "configs.cm.url"
        value = "https://${var.argocd_host}"
    }
}