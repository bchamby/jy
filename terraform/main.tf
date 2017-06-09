provider "aws" {
  region = "${var.aws_region}"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}

resource "aws_instance" "prdawsjyrsh0" {
  count = 1
  instance_type = "${var.instance_type}"
  ami           = "${var.ami}"
  tags {
    Department = "Jinghua"
    Name = "prdawsjyrsh0${count.index+1}"
  }
  key_name      = "${var.key_pair}"
  subnet_id     = "${var.subnet_id}"
  vpc_security_group_ids = ["${var.vpc_security_group_ids}"]
}
