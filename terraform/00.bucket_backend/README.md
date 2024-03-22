# 00.Bucket_backend
Set up backend to share and save `terraform.tfstate` in an object storage.
## Launch the run
1. Go to the [IAM manager](https://console.scaleway.com/iam/api-keys) and generate a pair of API keys.
2. Create a `terraform.tfvars` file and fill it like this :
```
access_key = "<your-access-key>"
project_id = "<your-project-id>
secret_key = "<your-secret-key>"
email = "<your-email>"
```
3. Initialize the terraform run with `terraform init`
3. Set the environment to prod with the command `terraform workspace new prod`
4. Then run `terraform apply` and let the magic happen !