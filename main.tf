provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "Instance_from_jenkins" {
  ami           = "ami-0c2b8ca1dad447f8"
  instance_type = "t2.micro"
  key_name      = "mykeypair"
  
  tags = {
	Name = "Jenkins_Instance"
  }