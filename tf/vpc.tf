# Network definition

module "vpc" {
  source                = "git::https://github.com/digirati-co-uk/terraform-aws-modules.git//tf/modules/vpc/"
  region                = "${var.region}"
  vpc_cidr              = "${var.vpc_cidr}"
  subnet_public_1_cidr  = "${var.subnet_public_1_cidr}"
  subnet_public_1_az    = "${var.region}a"
  subnet_public_2_cidr  = "${var.subnet_public_2_cidr}"
  subnet_public_2_az    = "${var.region}b"
  subnet_private_1_cidr = "${var.subnet_private_1_cidr}"
  subnet_private_1_az   = "${var.region}a"
  subnet_private_2_cidr = "${var.subnet_private_2_cidr}"
  subnet_private_2_az   = "${var.region}b"
  prefix                = "${var.prefix}"
  project               = "${var.project}"
}

data "aws_security_group" "default" {
  vpc_id = "${module.vpc.vpc_id}"
  name   = "default"
}
