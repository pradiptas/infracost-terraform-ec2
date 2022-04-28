provider "aws" {
  access_key = "${data.vault_aws_access_credentials.creds.access_key}"
  secret_key = "${data.vault_aws_access_credentials.creds.secret_key}"
  region	 = "${var.region}"
}

resource "aws_instance" "ec2-vault-prad-instance" {
  ami           = "${var.instance_ami}"
  instance_type = "${var.instance_type}"
  tags = {
    Name = "ec2-vault-prad-instance"
  }
}