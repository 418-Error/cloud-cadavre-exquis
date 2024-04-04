resource "kubernetes_namespace" "namespace-app" {
  metadata {
    name = "cloud-cadavre-exquis"
  }
}

resource "kubernetes_namespace" "namespace-system" {
  metadata {
    name = "system-apps"
  }
}