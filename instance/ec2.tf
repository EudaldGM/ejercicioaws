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

#hay alguna manera de hacer que este codigo sea condicional en el caso de qe no existan los security groups? o se tiene que poner el codigo a parte y llamarlo si existen
resource "aws_network_interface_sg_attachment" "sg_attachment" {
  security_group_id    = var.sg_id
  network_interface_id = aws_instance.instance.primary_network_interface_id
}