data "aws_ami" "base" {
  most_recent = true
  owners      = ["${var.ami_owner}"]

  filter {
    name   = "name"
    values = ["${var.ami_name}"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

module "aws_std_network" {
  source = "../../../tf-aws-standard-network"
  # source = "github.com/hashicorp-modules/network-aws"

  name_prefix     = "${var.name}"
  image_id = "${data.aws_ami.base.id}"
  tags     = "${var.tags}"
}
