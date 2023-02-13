resource "aws_instance" "this" {
  ami                     = "ami-06b80a951df965a53"
  instance_type           = "t2.micro"
  vpc_security_group_ids  = [sg]
}

variable "sg" {}

# output "ec2-details" {
#   value = aws_instance.this.public_ip
# }