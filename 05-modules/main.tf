module "ec2" {
    source = "./ec2"
}

module "sg" {
    source = "./sg"
}

# printing the public ip address of the machine
output "server_public_ip" {
    value = aws_instance.this.public_ip
}