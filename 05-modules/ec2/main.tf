resource "aws_instance" "this" {
  ami                     = "ami-06b80a951df965a53"
  instance_type           = "t2.micro"
  vpc_security_group_ids  = [var.sg]
}

variable "sg" {}

output "public-ip-address" {
  value = aws_instance.this.public_ip
}