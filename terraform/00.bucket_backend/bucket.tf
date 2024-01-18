module "ovh_bucket_tfstate" {
    source = "../modules/ovh_bucket"
    bucket_name = "bucket"
    ovh_public_cloud_project_id = var.ovh_conf[terraform.workspace].project_id
    region = var.ovh_region
    s3_endpoint = "https://s3.gra.io.cloud.ovh.net"
    user_desc_prefix = "test-tf"
    bucket_label = {
        name = "tf-state"
        tenant = var.tenant_name
    }
}
