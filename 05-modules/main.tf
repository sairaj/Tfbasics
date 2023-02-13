module "ec2" {
    source = "./ec2"
    sg = module.sg.sg-id
}

module "sg" {
    source = "./sg"
    # aws_details = module.ec2.
}

# printing the public ip address of the machine
# output "server_public_ip" {
#     value = aws_instance.this.public_ip
# }