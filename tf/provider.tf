provider "aws" {
  region = var.region
}

provider "template" {
  version = "~> 2.1.1"
}

provider "null" {
  version = "~> 2.1.2"
}

terraform {
  backend "s3" {
    bucket = "BUCKET_NAME"
    key    = "terraform.tfstate"
    region = "REGION"
  }
}
