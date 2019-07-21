# gcp-network

* VPC in Google Cloud Platform
* subnets in two regions
* virtual machine
* firewall rules

## set up project and credentials
* create GCP project
* create terraform service account with appropriate IAM role for deployment
* download keys, save and include path to file in bash profile, e.g.
```
export GOOGLE_CLOUD_KEYFILE_JSON="/Users/username/gcp/serviceaccount.json"
```
* enable compute-engine API using GCP console

## deploy
* start new shell
* enter project name when prompted or use tfvars file

```
terraform init
terraform workspace new dev
terraform plan
terraform apply
```
