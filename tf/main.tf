terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  cloud {
    organization = "Yoloxsta"

    workspaces {
      name = "Terraform-Cloud-Testing-stag"
    }
  }
}

provider "aws" {
  region     = var.region
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
}

module "s3_bucket" {
  source  = "app.terraform.io/Yoloxsta/s3-bucket/aws"
  version = "1.0.0"

  prefix      = var.env          # This is the prefix like "staging"
  bucket_name = var.s3_bucket_name
}
