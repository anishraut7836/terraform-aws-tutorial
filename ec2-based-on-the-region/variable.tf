variable "aws_access_key" {
  default = "put_your_key"
}

variable "aws_secret_key" {
default = "put_your_key"
}

variable "region" {
  default = "ap-south-1"
  
}

//based on the region defined it will pick the AMI and deploy the instance. 
variable "ec2_ami" {
  type = "map"
  default = {
  ap-south-1 = "ami-76d6f519"
  us-west-2 = "ami-e251209a"
  }
  
}


