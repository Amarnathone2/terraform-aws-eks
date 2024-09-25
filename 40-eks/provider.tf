terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.57"
    }
  }
  backend "s3" {
    bucket = "csvdaws78s-remote-state"
    key    = "expense-dev-eks"
    region = "us-east-1"
    dynamodb_table = "csvdaws78s-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}