resource "ovh_cloud_project_user" "s3_admin_user" {
  provider = ovh
  service_name = var.ovh_public_cloud_project_id
  description  = "${var.user_desc_prefix} that is used to create S3 access key"
  role_name    = "objectstore_operator"
}

resource "ovh_cloud_project_user_s3_credential" "s3_admin_cred" {
  provider = ovh
  service_name = var.ovh_public_cloud_project_id
  user_id      = ovh_cloud_project_user.s3_admin_user.id
}

resource "aws_s3_bucket" "b" {
  provider = aws
  bucket = "${var.tenant_name}-${terraform.workspace}-${var.bucket_name}"
}
