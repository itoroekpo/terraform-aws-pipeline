provider "aws" {
  region = local.region
}

terraform {
  backend "s3" {
    bucket = "itoro-cicd"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}