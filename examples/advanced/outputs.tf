output "zREADME" {
  value = <<README
Your "${var.name}" network infrastructure has been successfully provisioned!

A private RSA key has been generated and downloaded locally. The file permissions have been changed to 0600 so the key can be used immediately for SSH or scp.

Run the below command to add this private key to the list maintained by ssh-agent so you're not prompted for it when using SSH or scp to connect to hosts with your public key.

  ${format("ssh-add %s", module.ssh_keypair_aws_override.private_key_filename)}

The public part of the key loaded into the agent ("public_key_openssh" output) has been placed on the target system in ~/.ssh/authorized_keys.

Use the below command(s) to SSH into a Bastion host using this private key.

  ${join("\n  ", formatlist("ssh -A -i %s %s@%s", module.ssh_keypair_aws_override.private_key_filename, module.aws_std_network.bastion_username, module.aws_std_network.bastion_ips_public))}

To force the generation of a new key, the private key instance can be "tainted" using the below command.

  terraform taint -module=ssh_keypair_aws_override.tls_private_key tls_private_key.key
README
}

output "vpc_cidr" {
  value = "${module.aws_std_network.vpc_cidr}"
}

output "vpc_id" {
  value = "${module.aws_std_network.vpc_id}"
}

output "subnet_public_ids" {
  value = "${module.aws_std_network.subnet_public_ids}"
}

output "subnet_private_ids" {
  value = "${module.aws_std_network.subnet_private_ids}"
}

output "bastion_security_group" {
  value = "${module.aws_std_network.bastion_security_group}"
}

output "bastion_ips_public" {
  value = "${module.aws_std_network.bastion_ips_public}"
}

output "bastion_username" {
  value = "${module.aws_std_network.bastion_username}"
}

output "private_key_name" {
  value = "${module.ssh_keypair_aws_override.private_key_name}"
}

output "private_key_filename" {
  value = "${module.ssh_keypair_aws_override.private_key_filename}"
}

output "private_key_pem" {
  value = "${module.ssh_keypair_aws_override.private_key_pem}"
}

output "public_key_pem" {
  value = "${module.ssh_keypair_aws_override.public_key_pem}"
}

output "public_key_openssh" {
  value = "${module.ssh_keypair_aws_override.public_key_openssh}"
}

output "ssh_key_name" {
  value = "${module.aws_std_network.ssh_key_name}"
}
