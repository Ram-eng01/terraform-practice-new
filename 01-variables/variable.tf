#1. command line
#2. tfvars
#3. Environment variables  ===== export TF_VARS_<varible_name>=<value>
#4. default values




variable "image_id" {
  type        = string
  default     = "ami-068c0051b15cdb816"
  description = "Amazon linux id"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "tags" {
  type = map(any)
  default = {
    Name        = "terraform-demo"
    Terraform   = "true"
    Project     = "expense"
    Environment = "dev"
  }

}
variable "sg_name" {
  type        = string
  default     = "allow-all"
  description = "Security Group Nmae to attach to EC2 instance"
}

variable "cidr" {
  type    = list  
  default = ["0.0.0.0/0"]
}

variable "ingress_from_port" {
  default = 0
}

variable "ingress_to_port" {
  default = 0
}

variable "egress_from_port" {
  default = 0
}

variable "egress_to_port" {
  default = 0
}

variable "protocol" {
  type    = string
  default = "-1"

}