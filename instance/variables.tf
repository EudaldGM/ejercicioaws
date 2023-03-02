variable "instance_name" {
  type = string
}
variable "instance_type" {
  type = string
  default = "t3.micro"
}
variable "ami" {
  type = string
  default = "ami-0c0933ae5caf0f5f9"
}
variable "sn_id" {
  type = string
}
variable "sg_id" {
  type = string
}