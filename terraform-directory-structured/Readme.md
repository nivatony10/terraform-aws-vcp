### Codelab: Terraform example to create a AWS VPC
This script creates 

- 1 Private VPC
- 2 Public and 2 Private Subnets per avaialability zone
- 1 NAT Gateway
- 1 Internet Gateway
- 1 Elastic IP for the internet gateway

![Blank diagram](https://user-images.githubusercontent.com/2060769/117240934-8f043880-ae4f-11eb-8b08-de0472bb130f.jpeg)

## task:

You must use either Terraform, AWS CloudFormation or AWS CDK for all of the following tasks.

Create code for deploying a VPC in AWS with 2 public and 2 private subnets.

Create code for deploying an EKS cluster in AWS, which will use the VPC created in the previous step. The cluster must have 2 nodes, using instance type t3a.large. The nodes must be on the private subnets only.

Add a README.md to the root directory of your project, with instructions for the team to deploy the infrastructure you created.

Publish your code to a public Git repository in a platform of your choice (e.g. GitHub, GitLab, Bitbucket, etc.), so that it can be cloned and tested by the team.( code pushed in github :-) )



## this is how it works :
1. Setup variables like project name, region name, availability zones, CIDR etc  correctly in terraform.tfvars file.
2. Setup your terraform credential using 
```
$ export AWS_ACCESS_KEY_ID="<YOUR_KEY_ID>"
$ export AWS_SECRET_ACCESS_KEY="<YOUR_SECRET>"
```
3. Run Terraform using 
```
terraform init
terraform apply
```
4. To delete created resources
```
terraform destroy
```



