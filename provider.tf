terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.35.0"
    }
  }
    backend "s3" {
    bucket = "saidev-remote-state"
    key    = "vpc-test"
    region = "us-east-1"
    dynamodb_table = "saidev-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}
