terraform {
  required_providers {
    source = "hashicorp/aws"
    version = "~> 5.0"
  }
}

provider "aws" {
    region = "us-east-1"
}