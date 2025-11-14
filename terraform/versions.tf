terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  #Uses AWS CLI configuration (aws configure)
  #This configures the default AWS provider that will use your local AWS CLI credentials 
  #and default region settings. like your CLI configured region
}

provider "aws" {
  alias  = "us_east_2"
  region = "us-east-2"
}