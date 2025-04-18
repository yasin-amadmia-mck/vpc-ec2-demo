  variable "default_tags" {
    type        = map(string)
    description = "Default Tags to enforce on all resources"
    default     = {}
  }

  variable "aws_region" {
    type        = string
    description = "AWS Region to provision the infra into"
    default     = "eu-west-2"
  }

  variable "aws_access_key" {
    type        = string
    description = "AWS Access Key for Authentication"
  }

  variable "aws_secret_key" {
    type        = string
    description = "AWS Secret Key for Authentication"
  }

    variable "vpc_name" {
    type        = string
    description = "Name of the VPC"
    default     = "default"
  }

  variable "vpc_cidr_block" {
    type        = string
    description = "CIDR block for VPC"
  }

    variable "vpc_enable_dns_support" {
    type        = bool
    description = "A boolean flag to enable/disable DNS support in the VPC"
    default     = true
  }

  variable "vpc_enable_dns_hostnames" {
    type        = bool
    description = "A boolean flag to enable/disable DNS hostnames in the VPC"
    default     = false
  }

  variable "vpc_enable_network_address_usage_metrics" {
    type        = bool
    description = "Indicates whether Network Address Usage metrics are enabled for your VPC"
    default     = false
  }

  variable "availability_zones" {
    type        = list(string)
    description = "List of AZs to create subnets in"
    default     = ["a", "b", "c"]
  }

  variable "public_subnets" {
    type        = list(string)
    description = "CIDR blocks for public subnets"
  }

  variable "private_subnets" {
    type        = list(string)
    description = "CIDR blocks for private subnets"
  }

  variable "ec2_ami_name" {
    type        = string
    description = "Search string/name for AMI"
    default     = "al2023-ami-2023.*-x86_64"
  }

  variable "ec2_instance_az" {
    type        = string 
    description = "AZ where to launch EC2 Instance"
    default     = "a"
  }

  variable "ec2_instance_key" {
    type        = string
    description = "EC@ Instance Key"
  }

  variable "ec2_instance_size" {
    type        = string
    description = "Size of the EC2 Instance"
    default     = "t2.micro"
  }
