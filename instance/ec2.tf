resource "aws_instance" "instance" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }

  network_interface {
    network_interface_id = aws_network_interface.nic.id
    device_index         = 0
  }
}

resource "aws_network_interface" "nic" {
  subnet_id   = var.sn_id
}