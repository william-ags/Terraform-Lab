terraform {

  required_version = ">=1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=3.0.0"
    }

  }


  backend "s3" {
    bucket = "infra-aws-will"
    key    = "aws-ec2-modulo-local/terraform.tfstate"
    region = "us-east-1"

  }
}

provider "aws" {
  region     = var.location


  default_tags {
    tags = {
      owner      = "William"
      managed-by = "terraform"
    }
  }
}


module "network" {
  source = "./network"
}
