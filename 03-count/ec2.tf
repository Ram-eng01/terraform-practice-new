resource "aws_instance" "terraform" {
   #count = 3
   count = length(var.instance_name)
   ami = "ami-068c0051b15cdb816"
   instance_type = "t3.micro"
   vpc_security_group_ids = [aws_security_group.allow_all.id]

   tags = {
    Name = var.instance_name[count.index]
   }

}

resource "aws_security_group" "allow_all" {
  name = "allow-all"

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"] 
  }

  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {
    Name = "allow-all"
  }
}