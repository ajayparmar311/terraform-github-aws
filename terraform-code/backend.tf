terraform {
  backend "s3" {
    bucket         = "irada-terraform-state"  # Must match manually created bucket
    key            = "global/s3/production/terraform.tfstate"  # Path to store state
    region         = "us-east-2"              # Same as bucket region
    dynamodb_table = "terraform-locks"        # Must match DynamoDB table name
    encrypt        = true                     # Enables server-side encryption
  }
}
