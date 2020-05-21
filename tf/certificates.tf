# Certificates

resource "aws_acm_certificate" "base" {
  domain_name = var.domain

  subject_alternative_names = [
    "*.${var.domain}",
  ]

  validation_method = "DNS"

  tags = {
    Name    = "${var.prefix}-base"
    Project = var.project
  }
}

