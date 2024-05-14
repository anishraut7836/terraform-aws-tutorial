provider "aws" {
access_key = "${var.aws_access_key}"
secret_key = "${var.aws_secret_key}"
region = "${var.region}"
}

resource "aws_vpc" "main" {
    cidr_block = "${var.vpc_cidr}"
    instance_tenancy = "default"

        tags= {
            Name = "newvpc"
            Location = "Mumbai"
        }
  
}

resource "aws_subnet" "subnets" {
    count = "${length(data.aws_availability_zones.azs.names)}"
    availability_zone = "${element(data.aws_availability_zones.azs.names,count.index)}"
    vpc_id = "${aws_vpc.main.id}" // Here I am using interpolation from aws_vpc resource. resource name and logical name. 
    cidr_block = "${element(var.subnet_cdir,count.index)}"

     tags = {
        Name = "Subnet-${count.index+1}"    //subnet name starting with zero if not mention +1
     }
  
}

