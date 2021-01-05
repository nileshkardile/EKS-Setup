provider "aws" {
  region  = "us-west-1"
  version 			= ">= 3.3.0"
  shared_credentials_file 	= "~/.aws/credentials"
}

# Using these data sources allows the configuration to be
# generic for any region.
data "aws_region" "current" {}

data "aws_availability_zones" "available" {}

