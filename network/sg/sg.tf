resource "aws_security_group" "sg" {
  vpc_id      = var.vpc_id

  ingress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = var.protocol
    cidr_blocks      = [var.vpc_cidr]
  }

    #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group#:~:text=NOTE%20on%20Egress%20rules%3A
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}