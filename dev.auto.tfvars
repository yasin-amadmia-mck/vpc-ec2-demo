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
