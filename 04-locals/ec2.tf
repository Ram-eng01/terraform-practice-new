resource "aws_instance" "my_instance" {
  ami = 
  instance_type =
  vpc_security_group_ids = [  ]
  tags = 
}

resource "aws_security_group" "allow_all" {
  name = 

  egress {
    from_port        = var.egress_from_port
    to_port          = var.egress_to_port
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = var.cidr
  }

  ingress {
    from_port        = var.ingress_from_port
    to_port          = var.ingress_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr
  }

  tags = merge(
      var.common_tags,
      {
        Name = "${local.common_name}-allow-all"
        Purpose = "locals"
      }
    )
}