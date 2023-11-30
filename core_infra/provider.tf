terraform {

  backend "s3" {
    bucket = "mongodb-module-tf-state-us-east-1"
    key    = "core-infra/terraform.tfstate"
    region = "us-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.26.0"
    }
    mongodbatlas = {
      source  = "mongodb/mongodbatlas",
    }
  }
}


provider "aws" {
  region = "us-east-1"

}

provider "mongodbatlas" {
  public_key = jsondecode(data.aws_secretsmanager_secret_version.secret-version.secret_string)["mongodbatlas_public_key"]
  private_key  = jsondecode(data.aws_secretsmanager_secret_version.secret-version.secret_string)["mongodbatlas_private_key"]
}







