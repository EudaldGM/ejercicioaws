variable "sn_cidr" {
    type = string
}
variable "vpc_id"{
    type = string
}
variable "route_table_id"{
    type = string
}
variable "publicsubnet"{
    type = bool
    default = false
}