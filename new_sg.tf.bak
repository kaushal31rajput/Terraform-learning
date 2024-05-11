resource "aws_vpc_security_group_ingress_rule" "aallow_tls_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.cidr
  from_port         = var.https-port
  ip_protocol       = "tcp"
  to_port           = var.https-port
}

resource "aws_vpc_security_group_ingress_rule" "ballow_tls_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.cidr
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_ingress_rule" "callow_tls_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.cidr
  from_port         = var.ftp-port
  ip_protocol       = "tcp"
  to_port           = var.ftp-port
}

resource "aws_vpc_security_group_ingress_rule" "dallow_tls_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.cidr
  from_port         = var.http-port
  ip_protocol       = "tcp"
  to_port           = var.http-port
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  tags = {
    Name = "allow_tls"
  }
}



resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.cidr
  ip_protocol       = "-1" # semantically equivalent to all ports
}
