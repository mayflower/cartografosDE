provider "aws" {
  region = "eu-central-1"
}

#terraform {
#  backend "s3" {
#    region         = "us-west-1"
#    bucket         = "my-terraform-state"
#    key            = "global/tfstate/terraform.tfstate"
#    dynamodb_table = "my-terraform-lock"
#    encrypt        = true
#  }
#}


resource "aws_s3_bucket" "cncf-terraform-state" {
  bucket = "cncf-mf-terraform-state"
}

resource "aws_s3_bucket_acl" "cncf-terraform-state-acl" {
    bucket = aws_s3_bucket.cncf-terraform-state.id
    acl = "private"
}

resource "aws_dynamodb_table" "my-terraform-lock" {
  name           = "cncf-mf-terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}