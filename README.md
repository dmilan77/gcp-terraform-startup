
```
gcloud auth list
gcloud auth application-default login
```



```
export TFSA="terraform-sa@data-protection-01.iam.gserviceaccount.com"
export GOOGLE_OAUTH_ACCESS_TOKEN=$(gcloud --impersonate-service-account=${TFSA} auth print-access-token)

terraform plan -out tfout  
terraform apply "tfout"   
terraform destroy --auto-approve  
```