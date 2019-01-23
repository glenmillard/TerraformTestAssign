# TerraformTestAssign

## The following is a small and basic Elasticsearch deployment using Terraform on Amazon EC2

##### As per the instructions, it is a basic deployment.

#### What you will need

* git installed on your machine - in my case ``dnf install git``
* an AWS free account (unless you want to pay - which I don't!!) - https://aws.amazon.com/free/
* access to the Internet - umm yeah...
* in the file ``elastic-domain.tf`` (in the repo), update the following line to reflect your info:
``` 
provider "aws" {
  access_key = "<your AWS access key here>"
  secret_key = "<your AWS secret key here>"
  region     = "us-east-1"
}
```

1. Pull this repo ``git clone https://github.com/glenmillard/TerraformTestAssign.git``
2. make sure that the Terraform binary is installed on your machine ``https://www.terraform.io/downloads.html``
3. In the directory , run ``terraform init`` - this initialises your Terraform client
4. edit the file elastic-domain.tf to reflect your Amazon creds - see above to edit the elastic-domain.tf file
5. run ``terraform plan`` - see if there are errors
6. run ``terraform apply`` - it seems to take anywhere from 12 to 18 minutes to deploy
7. verify that the Elasticsearch cluster is present on your AWS console 
8. for informational purposes, if you login to your AWS console and you don't see your image(s), check your region. Don't
make the same mistake that I did. Note that us-east-1 is Virgina, and us-east-2 is Ohio.
