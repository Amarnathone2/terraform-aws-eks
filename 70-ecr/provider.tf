terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "csvdaws78s-remote-state"
    key    = "expense-dev-ecr"
    region = "us-east-1"
    dynamodb_table = "csvdaws78s-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}