//--------------------------------------------------------------------
// Modules
module "aws_std_network" {
  source  = "app.terraform.io/Patrick/aws_std_network/aws"
  version = "0.2.0"

  name              = "${var.name_prefix}"
  vpc_cidrs_public  = "${var.vpc_cidrs_public}"
  nat_count         = "${var.nat_count}"
  vpc_cidrs_private = "${var.vpc_cidrs_private}"
  bastion_count     = "${var.bastion_count}"
  tags              = "${var.tags}"
}
