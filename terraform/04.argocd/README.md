# 04.argocd
This run creates argocd
## Prerequisites :
- you have to launch the `../03.database` run before.
- you will need the argocd cli.
- you will need the `kubectl` cli.
## Launch the run
1. In your terminal launch the following commands :
```bash
cp ../03.database/terraform.tfvars .
terraform init
terraform workspace new prod
terraform apply
```
## Troubleshoot
If there is an error related to backend/s3 bucket authentication, run the following commands.
```bash
export AWS_ACCESS_KEY_ID="<your-access-key>"
export AWS_SECRET_ACCESS_KEY="<your-secret-key>"
```
## What's next ? 
Go to the folder `05.argocd-config` and read the `README.md`
```bash
cd ../05.argocd-config
```