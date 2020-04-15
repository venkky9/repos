provider "aws" {
  region                 = "us-east-1"
  access_key             = "AKIA6BVISBY5AAQYY6LF"
  secret_key             = "lNsOhynpO++QBvyqi+YR7dud5wPIecnTs3fwn4DL"
}
resource "aws_instance" "example" {

  ami                    = "ami-0affd4508a5d2481b"
  instance_type          = "t2.micro"
  key_name               = "malthumkar"
  vpc_security_group_ids = ["CentOS 7 -x86_64- - with Updates HVM-2002_01-AutogenByAWSMP-3"]

  tags = {
    name   = "terraform_instance"
  }
}

