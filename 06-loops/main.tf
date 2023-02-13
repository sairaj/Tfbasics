provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "this" {
  count                   = length(var.envs)
  ami                     = "ami-06b80a951df965a53"
  instance_type           = "t2.micro"

  tags = {
    Name = "Terraform-server"
  }
}

output "public_ip" {
    value = aws_instance.this.*.public_ip
}

variable "envs" {
    default = ["dev", "qa", "stage", "prod"]
}