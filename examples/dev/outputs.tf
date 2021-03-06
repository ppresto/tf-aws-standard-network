output "zREADME" {
  value = <<README
Your "${var.name_prefix}" network infrastructure has been successfully provisioned!
README
}

output "vpc_cidr" {
  value = "${module.aws_std_network.vpc_cidr}"
}

output "vpc_id" {
  value = "${module.aws_std_network.vpc_id}"
}

output "vpc_cidrs_public" {
  value = "${module.aws_std_network.vpc_cidrs_public}"
}

output "vpc_cidrs_private" {
  value = "${module.aws_std_network.vpc_cidrs_private}"
}

output "subnet_public_ids" {
  value = "${module.aws_std_network.subnet_public_ids}"
}

output "subnet_private_ids" {
  value = "${module.aws_std_network.subnet_private_ids}"
}
