terraform {
    required_version = ">= 1.3.0"

    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.10"
        }
    }
    
    backend "s3" {
        region         = "eu-central-1"
        bucket         = "cncf-mf-terraform-state"
        key            = "global/tfstate/terraform.tfstate"
        dynamodb_table = "cncf-mf-terraform-lock"
        encrypt        = true
    }
}

provider "aws" {
  region = "eu-central-1"

  default_tags {
    tags = {
      Project = "cncf"
      Environment = terraform.workspace
    }
  }
}