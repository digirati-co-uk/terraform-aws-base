# Bastion definition

module "bastion" {
  source = "git::https://github.com/digirati-co-uk/terraform-aws-modules.git//tf/modules/bastion/?ref=v2.0"

  ami      = var.bastion_ami
  key_name = aws_key_pair.auth.key_name
  vpc      = module.vpc.vpc_id
  subnets = [
    module.vpc.subnet_public_1_id,
    module.vpc.subnet_public_2_id,
  ]

  ip_whitelist = flatten([
    var.egress_whitelist,
  ])

  dns_zone = module.dns.external_zone_id
  domain   = var.domain

  prefix  = var.prefix
  project = var.project
}

