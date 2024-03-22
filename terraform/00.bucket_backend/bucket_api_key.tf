resource "scaleway_iam_api_key" "api_key" {
    user_id = data.scaleway_iam_user.find_by_email.id
    default_project_id = var.project_id
    description = "Terraform API Key to access the ${terraform.workspace} object storage containing the Terraform state file"
}