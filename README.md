# TerraformTestAssign

## The following is a small and basic Elasticsearch deployment using Terraform on Amazon EC2

##### As per the instructions, it is a basic deployment.

#### What you will need

* git installed on your machine
* an AWS free account (unless you want to pay - which I don't!!)
* access to the Internet
* in the file elastic-domain.tf, update the following line to reflect your info:
``` 
provider "aws" {
  access_key = "<your AWS access key here>"
  secret_key = "<your AWS secret key here>"
  region     = "us-east-1"
}
```

1. Pull this repo
2. make sure that the Terraform binary is installed on your machine
3. In the directory , run ``terraform init``
4. edit the file elastic-domain.tf to reflect your Amazon creds
5. run ``terraform plan`` - see if there are errors
6. run ``terraform apply`` - it seems to take anywhere from 12 to 18 minutes to deploy
7. verify that the Elasticsearch cluster is present on your AWS console 
