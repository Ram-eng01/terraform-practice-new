terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.16.0"
    }
  }

  backend "s3" {
    bucket = "ram-terraform-bucket-12122025"
    key    = "expense-dev-vpc"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}