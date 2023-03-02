variable "vpc_id" {
  type = string
}
variable "from_port" {
  type = number
  default = 0
}
variable "to_port" {
  type = number
}
variable "protocol" {
  type = string
  default = "tcp"
}
variable "vpc_cidr" {
  type = string
}