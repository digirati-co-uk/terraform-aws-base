provider "aws" {
  region = "${var.region}"
}

provider "template" {
  version = "~> 0.1"
}

provider "null" {
  version = "~> 1.0"
}

terraform {
  backend "s3" {
    bucket = "BUCKET_NAME"
    key    = "terraform.tfstate"
    region = "REGION"
  }
}
