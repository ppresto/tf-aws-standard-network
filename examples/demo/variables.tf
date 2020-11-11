variable "name"      { }
variable "region" {default = "us-west-2"}
variable "ami_owner" { default = "309956199498" } # Base RHEL owner
variable "ami_name"  { default = "*RHEL-7.3_HVM_GA-*" } # Base RHEL name

variable "tags" {
  type        = "map"
  default     = {}
}
