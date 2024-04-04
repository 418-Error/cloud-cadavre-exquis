# 02.kapsule
This run creates a kapsule cluster.
## Prerequisites :
- you have to launch the `../01.vpc` run before.
## Launch the run
1. run the following commands :
```bash
cp ../01.vpc/terraform.tfvars .
terraform init
terraform workspace new prod
terraform apply
```
⚠ This run takes a long time to end, so be patient and let the magic happen !

2. Once it's done save the cluster id thanks to the following command : 
```bash
export SCW_CLUSTER_ID="$(terraform output k8s_id | sed 's/fr-par\///g' | sed 's/\"//g')"
```
## Troubleshoot
If there is an error related to backend/s3 bucket authentication, run the following commands.
```bash
export AWS_ACCESS_KEY_ID="<your-access-key>"
export AWS_SECRET_ACCESS_KEY="<your-secret-key>"
```
## What's next ?
Go to the folder `03.database`
```bash
cd ../03.database
```