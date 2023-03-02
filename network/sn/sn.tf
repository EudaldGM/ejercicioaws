resource "aws_subnet" "subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.sn_cidr
  map_public_ip_on_launch = var.publicsubnet
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.subnet.id
  route_table_id = var.route_table_id
}