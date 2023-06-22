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
  shared_credentials_files = ["/Users/macbook/.aws/credentials"]
  profile = default
}
