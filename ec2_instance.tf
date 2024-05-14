resource "aws_instance" "web" {
    ami = "${lookup(var.ec2_ami,var.region)}" //we are using lookup function here. Here lookup AMI based on the region. 
    instance_type = "t2.micro"

    tags = {
        Name = "HelloWord"
    }
  
}