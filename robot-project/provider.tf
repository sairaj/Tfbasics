provider "aws" {}

# Declaring the remove state file
terraform {
    backend "s3" {
        bucket  = "b52-terraform-stage-bucket"
        key     = "ec2/dev/terraform.tfstate"
        region  = "us-east-1"
    }
}