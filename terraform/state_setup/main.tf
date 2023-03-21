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
  tags = {
    project = "cncf-mf-terraform-states",
    repository = "https://github.com/mayflower/cartografosDE/tree/s3-deployment/terraform/state_setup"
  }
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
  tags = {
    project = "cncf-terraform-lock-table",
    repository = "https://github.com/mayflower/cartografosDE/tree/s3-deployment/terraform/state_setup"
  }
}

resource "aws_iam_user" "deploy_user" {
    name = "cncf.deploy"
    tags = {
      Project = "cncf-maturitymodel"
      repository = "https://github.com/mayflower/cartografosDE"
    }
}

resource "aws_iam_user_group_membership" "deploy_user" {
    user = aws_iam_user.deploy_user.name
    groups = [ "administrator" ]
    depends_on = [
      aws_iam_user.deploy_user
    ]
}

resource "aws_iam_access_key" "deploy_access_key" {
    user = aws_iam_user.deploy_user.name
    pgp_key = "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"
    depends_on = [
      aws_iam_user.deploy_user
    ]
}


#output "deploy_secret_key" {
#  value = aws_iam_access_key.deploy_access_key.encrypted_secret
#}

output "deploy_access_key" {
  value = aws_iam_access_key.deploy_access_key.id
}
