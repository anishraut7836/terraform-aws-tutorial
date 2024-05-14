module "my_vpc" {
    source = "../modules/vpc"
    vpc_cidr = "${var.vpc_cidr}"
    tenancy = "default"
    vpc_id = "${module.my_vpc.vpc_id}"
    subnet_cidr = "${var.subnet_cidr}"
  
}



module "my_ec2" {
    source = "../modules/ec2"
    ec2_count = 1
    ami_id = "ami-5a8da735"
    instance_type = "t2.micro" 
    subnet_id = "${module.my_vpc.subnet_id}"
}

