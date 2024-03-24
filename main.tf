provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Amazon-Linux2-Server" {
  count         = 1
  ami           = "ami-02d7fd1c2af6eead0"
  instance_type = "t2.medium"
  key_name      = "awslinux"
  tags = {
    Name = "Amazon-Linux2-VM"
  }
}

resource "aws_instance" "Ubuntu_1" {
  count         = 1
  ami           = "ami-080e1f13689e07408"
  instance_type = "t2.medium"
  key_name      = "ubuntu"
  tags = {
    Name = "Ubuntu-VM"
  }
}
