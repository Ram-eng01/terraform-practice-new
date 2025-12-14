
variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "project_name" {
  type = string
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "common_tags" {
  type = map(any)

}

variable "vpc_tags" {
  type    = map(any)
  default = {}
}


###### IGW

variable "igw_tags" {
  type    = map(any)
  default = {}
}


#### Public subnet #####
variable "public_subnet_cidrs" {
  type = list 
  validation {
    condition = length(var.public_subnet_cidrs) == 2
    error_message = "Please provide 2 valid public subnet CIDR"
  }
  
}

 variable "public_subnet_cidrs_tags" {
    type = map 
    default = {}
}

#### Private subnet ######
variable "private_subnet_cidrs" {
  
  type = list 
  validation {
    condition = length(var.private_subnet_cidrs) == 2
    error_message = "Please provide valid 2 privte subnets"
  }
}


variable "private_subnet_cidrs_tags" {
    type = map 
    default = {}
}


#### Database subnet ######
variable "database_subnet_cidrs" {
  
  type = list 
  validation {
    condition = length(var.database_subnet_cidrs) == 2
    error_message = "Please provide valid 2 privte subnets"
  }
}


variable "database_subnet_cidrs_tags" {
    type = map 
    default = {}
}

variable "nat_gateway_tags" {
  type = map 
  default = {}
}


variable "private_route_table_tags" {
  type = map 
  default = {}
}

variable "public_route_table_tags" {
  type = map 
  default = {}
}

variable "database_route_table_tags" {
  type = map 
  default = {}
}

### Peering ####
variable "is_peering_required" {
  type = bool
  default = false
}

variable "acceptor_vpc_id" {
  type = string 
  default = ""
}

variable "vpc_peering_tags" {
  type = map 
  default = {}
}