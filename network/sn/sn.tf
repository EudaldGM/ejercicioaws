#Create Web-subnet
resource "aws_subnet" "subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.sn_cidr
}