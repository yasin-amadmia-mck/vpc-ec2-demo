output "vpc_id" {
  value = aws_vpc.main.id
}

output "vpc_arn" {
  value = aws_vpc.main.arn
}

output "vpc_default_network_acl_id" {
  value = aws_vpc.main.default_network_acl_id
}

output "vpc_default_security_group_id" {
  value = aws_vpc.main.default_security_group_id
}

output "vpc_default_route_table_id" {
  value = aws_vpc.main.default_route_table_id
}

output "vpc_public_subnet_ids" {
  value = ["${aws_subnet.public.*.id}"]
}

output "vpc_public_subnet_arns" {
  value = ["${aws_subnet.public.*.arn}"]
}

output "vpc_private_subnet_ids" {
  value = ["${aws_subnet.private.*.id}"]
}

output "vpc_private_subnet_arns" {
  value = ["${aws_subnet.private.*.arn}"]
}

output "vpc_internet_gw_arn" {
  value = aws_internet_gateway.main.arn
}

output "vpc_internet_gw_id" {
  value = aws_internet_gateway.main.id
}

output "nat_gw_public_ip" {
  value = aws_nat_gateway.main.public_ip
}

output "nat_gw_id" {
  value = aws_nat_gateway.main.id
}

output "ami_id" {
  value = data.aws_ami.amzn-linux-2023-ami.id
}

output "instance_id" {
  value = aws_instance.main.id
}

output "instance_public_ip" {
  value = aws_eip.ec2.public_ip
}

output "instance_ssh_key" {
  value = aws_instance.main.key_name
}