terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.3.0"
    }
  }
}

provider "aws" {
  # Configuration options
}


resource "aws_iam_user" "terraform-test" {
  name = "terraform-test"

  tags = {
    service = "terraform"
  }
}

resource "aws_iam_user" "admin_user" {
  name = "ajayparmar"
  tags = {
    Purpose = "Admin user created by Terraform"
  }
}

resource "aws_iam_user_policy_attachment" "admin_policy" {
  user       = aws_iam_user.admin_user.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}




resource "aws_iam_user_policy_attachment" "attach_s3_readonly" {
  user       = aws_iam_user.terraform-test.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}


