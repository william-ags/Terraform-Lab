terraform {
    required_version = ">1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.location
  access_key = var.access_key_ID_VB
  secret_key =var.secret_key_ID_VB

  }
