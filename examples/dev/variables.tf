variable "name_prefix"       { }
variable "vpc_cidrs_public"  { type = "list" default = ["10.139.1.0/24",]}
variable "vpc_cidrs_private" { type = "list" default = ["10.139.11.0/24",]}
variable "nat_count"         { default = 1}
variable "bastion_count"     { default = 1}

variable "tags" {
  type        = "map"
  default     = {}
}