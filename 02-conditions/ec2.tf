provider "aws" {
  region = "us-east-1"
}




resource "aws_instance" "us-instance" {
  ami                    = "ami-069e612f612be3a2b"
  instance_type          = "t2.micro"
  key_name               = "docker_2.key"
  vpc_security_group_ids = ["sg-04403eabf335339a8"]

  tags = {
    Name = "ram-instance"
  }
}

