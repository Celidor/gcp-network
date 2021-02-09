# gcp-network

* VPC in Google Cloud Platform
* subnets in two regions
* virtual machine
* firewall rules

![Alt text](gcp-network.png?raw=true "GCP Network")

## set up project and credentials
* create GCP project
* create terraform service account with appropriate IAM role for deployment
* download keys, save and include path to file in bash profile, e.g.
```
export GOOGLE_CLOUD_KEYFILE_JSON="/Users/username/gcp/serviceaccount.json"
```
* start new shell
* enable compute-engine API using GCP console
* duplicate the terraform.tfvars.example file
* rename without the .example suffix and enter your GCP project name

## requirements
* Terraform v 0.12.x

## deploy

```
terraform init
terraform workspace new dev
terraform plan
terraform apply
```
