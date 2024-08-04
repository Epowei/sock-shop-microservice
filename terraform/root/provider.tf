terraform {
  required_providers {
    aws = {
      source         = "hashicorp/aws"
      version        = "~>4.19.0"
    }
  }

  # backend "s3" {
  #   bucket           = "zenitugo21"
  #   key              = "eks-key"
  #   region           = "eu-west-1"
  #   dynamodb_table   = "ugdatabase"
  # }
}

provider "aws" {
  region             = var.region
}