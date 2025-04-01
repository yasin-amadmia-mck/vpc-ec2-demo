data "aws_ami" "amzn-linux-2023-ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = [var.ec2_ami_name]
  }
}

resource "aws_security_group" "http_80" {
  name        = "${var.vpc_name}-SG-Allow_http_80"
  description = "Security group to allow port 80 attached to VPC ${var.vpc_name}"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "${var.vpc_name}-security-group-http_80"
  }
}

resource "aws_vpc_security_group_ingress_rule" "ingress_http_80" {
  security_group_id = aws_security_group.http_80.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_egress_rule" "allow_all_egress" {
  security_group_id = aws_security_group.http_80.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"
}

resource "aws_instance" "main" {
  ami                    = data.aws_ami.amzn-linux-2023-ami.id
  subnet_id              = aws_subnet.public[index(var.availability_zones, var.ec2_instance_az)].id
  vpc_security_group_ids = [ aws_security_group.http_80.id ]

  key_name      = var.ec2_instance_key
  instance_type = var.ec2_instance_size

  tags = {
    Name = "${var.vpc_name}-nginx-instance"
  }
}

resource "aws_eip" "ec2" {
  domain = "vpc"
  instance = aws_instance.main.id

  tags = {
    Name = "${var.vpc_name}-EC2-Instance-EIP"
  }
}

