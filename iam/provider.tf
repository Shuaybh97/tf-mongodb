terraform {

  backend "s3" {
    bucket         = "mongodb-module-tf-state-us-east-1"
    key            = "iam/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock-mongodb-atlas"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.26.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"

}








