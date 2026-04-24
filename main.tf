provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "Instance_from_jenkins" {
  ami           = "ami-05d2d839d4f73aafb"
  instance_type = "t2.micro"
  key_name      = "mykeypair"
  
  tags = {
	Name = "Jenkins_Instance"
  }

}
