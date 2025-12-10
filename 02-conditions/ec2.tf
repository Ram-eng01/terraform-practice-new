resource "aws_instance" "terraform" {
    ami = "ami-068c0051b15cdb816"
    instance_type = var.environment == "dev" ? "t3.micro" : "t2.micro"
    tags = {
        Name = "terraform"
        Terraform = "true"
    }
}