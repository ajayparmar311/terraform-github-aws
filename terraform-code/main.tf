terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
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
