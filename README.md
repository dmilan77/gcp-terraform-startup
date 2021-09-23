# use impersonate service account
```
gcloud auth list
export TFSA="terraform-sa@data-protection-01.iam.gserviceaccount.com"

gcloud auth  login --no-launch-browser
# gcloud auth application-default login --no-launch-browser
```

# Terraform create

```
export GOOGLE_OAUTH_ACCESS_TOKEN=$(gcloud --impersonate-service-account=${TFSA} auth print-access-token)

terraform init 
terraform plan -out ".tfout"  
terraform apply ".tfout"   
terraform destroy --auto-approve  
```
# Destroy
```
rm -rf ".tfout"; rm -rf .terraform;rm -rf .terraform.lock.hcl ;rm -rf ~/.config
unset GOOGLE_OAUTH_ACCESS_TOKEN

```