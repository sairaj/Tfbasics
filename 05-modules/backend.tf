terraform {
    backend "s3" {
        bucket  = "b52-terraform-stage-bucket"
        key     = "module/terraform.tfstate"
        region  = "us-east-1"
    }
}

provider "aws" {}