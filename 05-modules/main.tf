module "ec2" {
    source = "./ec2"
    sg = module.sg.sg-id
}

module "sg" {
    source = "./sg"
    # aws_details = module.ec2.
}

variable "public-ip" {
    value = module.ec2.public-ip-address
}