provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "terraform" {
  #count = 3
  for_each = toset(["dev-server","QA-server","prod-server"])
  ami           = "ami-068c0051b15cdb816"
  instance_type = "t3.micro"
  tags = {
    Name = each.key
  }

}
