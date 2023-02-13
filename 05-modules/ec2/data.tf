data "aws_ami" "lab-image" {
  most_recent      = true
  name_regex       = "AnsibleImageSaiRajeshD"
  owners           = ["self"]
}

