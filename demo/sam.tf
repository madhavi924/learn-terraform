resource "aws_instance" "web" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [var.sg_id]


  tags = {
    Name = "HelloWorld"
  }
}
provider "aws" {
  version = "~> 5.0"
  region  = "us-east-1"
}
variable "sg_id" {}