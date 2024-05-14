variable "aws_access_key" {
  default = "put_your_access_key"
}

variable "aws_secret_key" {
default = "put_your_secret_key"
}

variable "region" {
  default = "ap-south-1"
  
}

variable "vpc_cidr" {
  default = "190.161.0.0/16"
}

variable "subnet_cdir" {
  type = list
  default = ["190.161.1.0/24", "190.161.2.0/24", "190.161.3.0/24"]
}

# variable "azs" {
#   type = list
#   default = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
  
# }

#Declare the data source
data "aws_availability_zones" "azs" {}
