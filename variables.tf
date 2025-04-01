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
    type = string
    description = "Name of the VPC"
    default = "default"
  }

  variable "vpc_cidr_block" {
    type = string
    description = "CIDR block for VPC"
  }

    variable "vpc_enable_dns_support" {
    type = bool
    description = "A boolean flag to enable/disable DNS support in the VPC"
    default = true
  }

  variable "vpc_enable_dns_hostnames" {
    type = bool
    description = "A boolean flag to enable/disable DNS hostnames in the VPC"
    default = false
  }

  variable "vpc_enable_network_address_usage_metrics" {
    type = bool
    description = "Indicates whether Network Address Usage metrics are enabled for your VPC"
    default = false
  }
