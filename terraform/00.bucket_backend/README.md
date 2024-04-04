# 00.Bucket_backend
Set up backend to share and save `terraform.tfstate` in an object storage.
## Launch the run
1. Go to the [IAM manager](https://console.scaleway.com/iam/api-keys) and generate a pair of API keys.
2. Execute the following command (these variables will be used to access the bucket you will create, ⚠ each time you'll want to launch a terraform run you'll have to fill these variables) :
```bash
export AWS_ACCESS_KEY_ID="<your-access-key>"
export AWS_SECRET_ACCESS_KEY="<your-secret-key>"
```
3. Create a `terraform.tfvars` file and fill it like this :
```
access_key = "<your-access-key>"
project_id = "<your-project-id>
secret_key = "<your-secret-key>"
```
4. Initialize the terraform run with `terraform init`
5. Set the environment to prod with the command `terraform workspace new prod`
6. Then run `terraform apply` and let the magic happen !