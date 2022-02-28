terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region                  = var.aws_region
  shared_credentials_file = "/home/dombuque/.aws/credentials"

}
