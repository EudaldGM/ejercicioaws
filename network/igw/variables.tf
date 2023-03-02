variable "vpc_id"{
    type = string
}
variable "igw_name"{
    type = string
}
variable "route_cidr"{
    type = string
    default = "0.0.0.0/0"
}