aws_region = "eu-west-2"

default_tags = {
  product_id = "12345"
  env        = "dev"
  Terraform  = true
}

vpc_name                                 = "demoVPC"
vpc_cidr_block                           = "10.0.0.0/16"
vpc_enable_dns_support                   = true
vpc_enable_dns_hostnames                 = false 
vpc_enable_network_address_usage_metrics = false

availability_zones = [ "a", "b", "c" ]
public_subnets     = ["10.0.100.0/24", "10.0.101.0/24", "10.0.103.0/24"]
private_subnets    = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]

ec2_instance_az  = "a"
ec2_ami_name      = "al2023-ami-2023.*-x86_64"
ec2_instance_key  = "my_key"
ec2_instance_size = "t2.micro"
