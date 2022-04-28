provider "aws" {
  region	 = "${var.region}"
}

resource "aws_instance" "ec2-vault-prad-instance" {
  ami           = "${var.instance_ami}"
  instance_type = "${var.instance_type}"
  tags = {
    Name = "ec2-vault-prad-instance"
  }
}