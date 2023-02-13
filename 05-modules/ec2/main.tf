resource "aws_instance" "this" {
  ami                     = "data.aws_ami.lab-image.image_id"
  instance_type           = "t2.micro"
  vpc_security_group_ids  = [var.sg]
}

variable "sg" {}

output "public-ip-address" {
  value = aws_instance.this.public_ip
}


# Patching of your EC2 & AMI has to be taken care as a part of the monthly maintenance.

# How do we patch the AMI ???
### Answer : Make an instance out of that AMI, update the server with latest pathces; Then , make AMI out of it with the same name and then deresigter the old AMI.
#### Airlines-Proj-X-1-Feb ;  Airlines-Proj-X-2-Mar ;

# PS : If you keep the provisioner inside the resource, if the provisioner fails for any reason, it assumes that the whole block is a failure and then it destroy and recreates in the next run.
