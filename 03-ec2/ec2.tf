provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "this" {
  ami                     = "ami-06b80a951df965a53"
  instance_type           = "t3.micro"

  tags = {
    Name = "TF1"
  }
}