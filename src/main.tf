terraform {
  required_version = ">= 0.11.8"

  backend "s3" {
    bucket         = "devsecops-hackathon-eks-tf-state"
    key            = "terraform.tfstate"
    region         = "us-west-1"
    encrypt        = true
  }
}

provider "aws" {
  region  = "us-west-1"
  version 			= ">= 3.3.0"
  shared_credentials_file 	= "~/.aws/credentials"
}

# Using these data sources allows the configuration to be
# generic for any region.
data "aws_region" "current" {}

data "aws_availability_zones" "available" {}

