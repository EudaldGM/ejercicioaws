resource "aws_nat_gateway" "example" {
  allocation_id = aws_eip.pubip.id
  subnet_id     = var.subnet_id
}

resource "aws_eip" "pubip" {}

resource "aws_route_table" "ngw_route_table" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.route_cidr
    gateway_id = aws_internet_gateway.igw.id
  }
}