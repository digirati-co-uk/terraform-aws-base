# DNS

module "dns" {
  source = "git::https://github.com/digirati-co-uk/terraform-aws-modules.git//tf/modules/dns/"

  domain = "${var.domain}"
  region = "${var.region}"
  vpc    = "${module.vpc.vpc_id}"

  prefix  = "${var.prefix}"
  project = "${var.project}"
}
