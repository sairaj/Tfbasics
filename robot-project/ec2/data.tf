# Declaring the data source
data "aws_ami" "lab-image" {
  most_recent      = true
  name_regex       = "AnsibleImage_Rajesh_New"
  owners           = ["self"]
}