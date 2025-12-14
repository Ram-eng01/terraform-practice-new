provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myinstance"{
   ami = "ami-068c0051b15cdb816"
   instance_type = "t3.small"
}

import {
  to = aws_instance.myinstance
  id = "i-0f52a5e1f7416b6af"
}