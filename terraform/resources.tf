provider "aws" {
  region	 = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "prad-terraform-bucket"
    key    = "terraform/webapp/terraform.tfstate"
    region = "us-west-2"
  }
}


resource "aws_instance" "ec2-prad-instance" {
  ami           = "${var.instance_ami}"
  instance_type = "${var.instance_type}"
  tags = {
    Name = "ec2-prad-instance"
  }
}