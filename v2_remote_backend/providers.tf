terraform {
  required_version = "~> 1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.50.0"
    }
  }
  /*   backend "s3" {
    bucket = "terraform-state-backukp"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"

    dynamodb_table = "terraform-dev-state-table"
  } */
}

provider "aws" {
  region  = "us-east-1"
  profile = "default"
}