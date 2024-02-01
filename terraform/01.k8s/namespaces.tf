resource "kubernetes_namespace" "cadavre-exquis-prod" {
  metadata {
    name = "cex-prod"
  }
}

resource "kubernetes_namespace" "cadavre-exquis-preprod" {
  metadata {
    name = "cex-preprod"
  }
}

