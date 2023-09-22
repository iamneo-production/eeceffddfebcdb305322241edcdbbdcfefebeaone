terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-northeast-1"
  access_key = "AKIAYUMZP5DEAR4FT67J"
  secret_key = "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"
}

# Create a VPC
resource "aws_instance" "ubuntu" {
  ami = "ami-0d52744d6551d851e"
  instance_type = "t2.micro"
}