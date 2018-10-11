module "iam_baseline" {
  source        = "git::https://github.com/digirati-co-uk/terraform-aws-modules.git//tf/modules/iam_baseline/"
  project       = "${var.project}"
  prefix        = "${var.prefix}"
  account_id    = "${var.account_id}"
  account_alias = "${var.account_alias}"
}
