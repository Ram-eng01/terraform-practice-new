provider "aws" {
  region = "us-east-1"
}




resource "aws_instance" "us-instance" {
  ami                    = "ami-069e612f612be3a2b"
  instance_type          = "t2.micro"
  key_name               = "docker_2.key"
  vpc_security_group_ids = ["sg-04403eabf335339a8"]

  connection {
    host        = self.public_ip
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("C:/Users/rammo/Downloads/docker_2.key.pem")
  }

  provisioner "remote-exec" {
    inline = [
      "sudo dnf update -y",
      "sudo dnf install httpd -y",
      "sudo systemctl enable --now httpd",
      "eco '<h1> Hello from terraform</h1>' | sudo tee /var/www/html/index.html"
    ]
  }
  tags = {
    Name = "ram-instance"
  }
}

