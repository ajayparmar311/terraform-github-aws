terraform {
  backend "s3" {
    bucket         = "irada-terraform-state"
    key            = "global/s3/production/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
