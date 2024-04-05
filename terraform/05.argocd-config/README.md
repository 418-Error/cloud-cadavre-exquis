# 05.argocd-config
This run will configure argocd by whitelisting the repositories, providing credentials to your repository and create application to manage by argocd.
## Prerequisites :
- you have to launch the `../04.argocd` run before.
- you will need the argocd cli.
- you will need the `kustomize` cli.
## Launch the run
0. Get the argocd password
```bash
kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath='{.data.password}' | base64 --decode
```
1. **In a new terminal (don't close your current terminal)**, port forward argocd to access it with the following command : 
```bash
kubectl port-forward service/argocd-server 8080:80 -n argocd
```
2. **Go back to your old terminal** and authenticate to argocd
```bash
argocd login localhost:8080
# WARNING: server is not configured with TLS. Proceed (y/n)? Type y
# Username: admin
# Password: <the-result-of-step-0>
```
3. Generate a github auth token here : https://github.com/settings/tokens. Make sure that your **classic token** has at least these rights : `project, read:public_key, repo, workflow`.
4. Create a new file `teraform.tfvars` and fill it like this :
```
argocd_repositories_config = [{
  password = "<your-classic-token>"
  url = "<your-repo-url>"
  username = "<your-user-name>"
  name = "<your-repo-name>"
}]
```
5. Run the following commands :
```bash
terraform init
terraform workspace new prod
terraform apply
```
## Post installation
6. After the run, run the commands :
```bash
./launch.sh
```
It will create the argocd applications and install all the CRDs.

7. Finally make sure that all your resources have been created by going to the address http://localhost:8080. Also you can go to your scaleway to make sure that your load balancer has been created.