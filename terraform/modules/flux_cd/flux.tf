resource "flux_bootstrap_git" "this" {
  depends_on = [github_repository_deploy_key.this]
  path = "cluster/my-cluster"
}