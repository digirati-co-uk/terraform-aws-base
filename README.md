# terraform-aws-base

[![Build Status](https://travis-ci.org/digirati-co-uk/terraform-aws-base.svg?branch=master)](https://travis-ci.org/digirati-co-uk/terraform-aws-base)

A template to use when creating a new AWS estate.

## Table of Contents
<!-- TOC orderedList:false -->

- [terraform-aws-base](#terraform-aws-base)
  - [Table of Contents](#table-of-contents)
  - [Setting up](#setting-up)
    - [1. Download base](#1-download-base)
    - [2. Configure variables for project](#2-configure-variables-for-project)
    - [3. Configure Terraform provider](#3-configure-terraform-provider)
    - [4. Add initial user](#4-add-initial-user)
  - [Topology](#topology)

<!-- /TOC -->

Using Terraform 0.11.8

## Setting up

### 1. Download base

Firstly, download this repository into your target folder.

### 2. Configure variables for project

Edit the values in `variables.tf` so they are suitable for this particular project.

| Variable              | Description                                                                                   |
|-----------------------|-----------------------------------------------------------------------------------------------|
| region                | AWS region to execute Terraform within                                                        |
| prefix                | Prefix to use for AWS resources, e.g. `ida`                                                   |
| project               | Project name for AWS cost allocation tags                                                     |
| account_id            | AWS Account ID                                                                                |
| account_alias         | AWS Account Alias                                                                             |
| egress_whitelist      | List of IP CIDR address ranges to add as a whitelist for SSH and private load balancer access |
| domain                | Apex of DNS domain (e.g. `dlcs-ida.org`)                                                      |
| bastion_ami           | Base Amazon Linux AMI to use                                                                  |
| vpc_cidr              | The CIDR block to use for the main VPC (e.g. `10.0.0.0/16`)                                   |
| amazon_dns_ip         | The IP for the internal Route53 DNS (will be start of VPC CIDR plus 2 - e.g. `10.0.0.2`)      |
| subnet_public_1_cidr  | CIDR of the first public subnet                                                               |
| subnet_public_2_cidr  | CIDR of the second public subnet                                                              |
| subnet_private_1_cidr | CIDR of the first private subnet                                                              |
| subnet_private_2_cidr | CIDR of the second private subnet                                                             |

### 3. Configure Terraform provider

Edit the marked values in `provider.tf`

| Name        | Description                                           |
|-------------|-------------------------------------------------------|
| BUCKET_NAME | Name of the S3 bucket that has been created           |
| REGION      | The AWS region that Terraform will be executed within |

```
terraform {
  backend "s3" {
    bucket = "BUCKET_NAME"
    key    = "terraform.tfstate"
    region = "REGION"
  }
}
```

### 4. Add initial user


## Topology

This will create a VPC with 4 subnets - 2 public and 2 private, with a bastion server accessible on the public subnet.

