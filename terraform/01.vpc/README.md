# 01.vpc
This run creates a virtual private cloud to host our future database and kapsule cluster.
## Prerequisites :
- you have to launch the `../00.bucket_backend` run before.
## Launch the run
1. run the following commands :
```bash
cp ../00.bucket_backend/terraform.tfvars .
terraform init
terraform workspace new prod
terraform apply
```
And let the magic happen !
## Troubleshoot
If there is an error related to backend/s3 bucket authentication, run the following commands.
```bash
export AWS_ACCESS_KEY_ID="<your-access-key>"
export AWS_SECRET_ACCESS_KEY="<your-secret-key>"
```
## What's next ?
Go to the run `02.kapsule` and open the `README`.
```
cd ../02.kapsule
```