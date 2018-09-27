variable "region" {
  description = "AWS region for deployment"
  default     = "eu-west-1"
}

variable "prefix" {
  description = "Prefix for AWS resources"
  default     = ""
}

variable "project" {
  description = "Project name for tags"
  default     = ""
}

variable "account_id" {
  description = "AWS Account ID"
  default     = ""
}

variable "account_alias" {
  description = "AWS Account Alias"
  default     = ""
}

variable "egress_whitelist" {
  description = "List of whitelisted CIDR ranges for SSH and private load balancer access"
  type        = "list"

  default = []
}

variable "domain" {
  description = "Apex DNS domain for deployment"
  default     = ""
}

variable "ecs_ami" {
  description = "ECS-optimised AMI to use"
  default     = "ami-13f7226a"
}

variable "bastion_ami" {
  description = "Base Amazon Linux AMI to use"
  default     = "ami-ebd02392"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  default     = "10.0.0.0/16"
}

variable "amazon_dns_ip" {
  description = "IP for internal Route53 DNS (will be start of VPC CIDR range plus 2)"
  default     = "10.0.0.2"
}

variable "subnet_public_1_cidr" {
  description = "CIDR of the first public subnet"
  default     = "10.0.0.0/24"
}

variable "subnet_public_2_cidr" {
  description = "CIDR of the second public subnet"
  default     = "10.0.1.0/24"
}

variable "subnet_private_1_cidr" {
  description = "CIDR of private subnet 1"
  default     = "10.0.2.0/24"
}

variable "subnet_private_2_cidr" {
  description = "CIDR of private subnet 2"
  default     = "10.0.3.0/24"
}
