resource "aws_security_group" "standart" {
  name_prefix = "standart"
  vpc_id      = var.vpc

  dynamic "ingress" {
    for_each = var.allow_ports
    content {
      from_port = ingress.value
      to_port   = ingress.value
      protocol  = "tcp"
      cidr_blocks = var.cidr_block
    }
  }
  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}