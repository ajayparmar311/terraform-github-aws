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

resource "aws_iam_user_policy_attachment" "attach_s3_readonly" {
  user       = aws_iam_user.terraform-test.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}
