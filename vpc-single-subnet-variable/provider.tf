provider "aws" {
access_key = "${var.aws_access_key}"
secret_key = "${var.aws_secret_key}"
region = "${var.region}"
}

resource "aws_vpc" "main" {
    cidr_block = "${var.vpc_cidr}"
    instance_tenancy = "default"

        tags= {
            Name = "myvpc"
            Location = "Mumbai"
        }
  
}

resource "aws_subnet" "subnet1" {
    vpc_id = "${aws_vpc.main.id}" // Here I am using interpolation from aws_vpc resource. resource name and logical name. 
    cidr_block = "${var.subnet_cdir}"

     tags = {
        Name = "Subnet1"
     }
  
}

