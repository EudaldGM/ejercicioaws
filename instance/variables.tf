variable "instance_name" {
  type = string
}
variable "instance_type" {
  type = string
  default = "t3.micro"
}
variable "ami" {
  type = string
  default = "ami-0a5d9cd4e632d99c1"
}
variable "sn_id" {
  type = string
}