provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "this" {
  ami                     = "ami-06b80a951df965a53"
  instance_type           = "t2.micro"
  vpc_security_group_ids  = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "Terraform-server"
  }
}

# printing the public ip address of the machine
output "public_dns_print" {
    value = aws_instance.this.public_dns
}