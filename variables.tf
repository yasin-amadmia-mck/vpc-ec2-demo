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