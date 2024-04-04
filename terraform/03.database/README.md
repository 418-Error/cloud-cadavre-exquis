# 03.database
This run creates a database and adds secrets 
## Prerequisites :
- you have to launch the `../02.kapsule` run before.
- you will need the scaleway cli
## Launch the run
0. Update your kubeconfig with the scaleway cli.
```bash
scw k8s kubeconfig install "$SCW_CLUSTER_ID" --profile <your-auth-profile>
```
Note : You will need to provide your scaleway credentials in your `~/.config/scw/config.yaml` file like this : 
```
profiles:
  <your-auth-profile>:
    access_key: <your-access-key>
    secret_key: <your-secret-key>
    default_organization_id: <your-organization-id>
    default_zone: <your-zone>
    default_region: <your-region>
    api_url: https://api.scaleway.com
    insecure: false
```
Note 2 : Your kubeconfig must be at the path `~/.kube/config`. Else modify the terraform code.

1. run the following commands :
```bash
cp ../02.kapsule/terraform.tfvars .
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
Go to the folder `04.argocd` and read the `README.md`
```bash
cd ../04.argocd
```