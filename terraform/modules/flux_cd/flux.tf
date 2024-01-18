resource "flux_bootstrap_git" "this" {
  path = "helm"
  manifests_path = "${var.git_url}/helm"
}