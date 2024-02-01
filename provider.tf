provider "aws" {
  region = local.region
}

terraform {
  backend "s3" {
    bucket = "itoro-cicd-pipeline"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}