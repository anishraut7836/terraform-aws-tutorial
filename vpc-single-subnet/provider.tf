provider "aws" {
access_key = "${var.aws_access_key}"
secret_key = "${var.aws_secret_key}"
region = "ap-south-1"
}

resource "aws_vpc" "main" {
    cidr_block = "190.160.0.0/16"
    instance_tenancy = "default"

        tags= {
            Name = "main"
            Location = "Mumbai"
        }
  
}

resource "aws_subnet" "subnet1" {
    vpc_id = "${aws_vpc.main.id}" // Here I am using interpolation from aws_vpc resource. resource name and logical name. 
    cidr_block = "190.160.1.0/24"

     tags = {
        Name = "Subnet1"
     }
  
}

