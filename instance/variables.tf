variable "instance_name" {
  type = string
}
variable "instance_type" {
  type = string
  default = "t3.micro"
}
variable "ami" {
  type = string
  default = "ubuntu"
}
variable "sn_id" {
  type = string
}