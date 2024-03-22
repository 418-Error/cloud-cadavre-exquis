data "scaleway_iam_user" "find_by_email" {
    email = var.email
    organization_id = var.organization_id
}