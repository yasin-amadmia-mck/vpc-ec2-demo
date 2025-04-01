###  Commentry

- This TF code will create the following resources
	- A VPC with 3 public and 3 private subnets
	- An Internet GW to route traffic for public subnets
	- A NAT GW associated with first public subnet to route traffic for private subnets
	- An EC2 Instance that has port 80 incoming and ALL outgoing open

###  How to run
- This TF provider expects `aws_region`, `aws_access_key` and `aws_secret_key`
- This can be exported on local terminal via `export TF_VAR_aws_region=eu-west-2`, `export_TF_VAR_aws_access_key=xxxx` and `export TF_VAR_aws_secret_key=xxx`.
- For CI/CD (ex: GitHub Actions), these values can be injected via GitHub Secrets or some other secret injection mechanism
- Then run `terraform init`, `terraform plan` and `terraform apply`
- To destroy the infra run `terraform destroy`