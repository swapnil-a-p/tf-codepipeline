terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
backend "s3" {
  bucket = "tf-cp-swapanch"
  key = "backed"
  region = "us-east-1"
}
}
provider "aws" {
  region = "us-east-1"
}
