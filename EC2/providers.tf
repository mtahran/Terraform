terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.4.0"
    }
  }
}

provider "aws" {
  region                = "us-east-1"
  aws_access_key_id     = ""
  aws_secret_access_key = ""
}
