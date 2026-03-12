

output "vpc_id" {
  description = "list of vpc id"
  value       = aws_vpc.main.id
}

output "public_subnets" {
  description = "list of public subnet id"
  value       = aws_subnet.public[*].id
}

output "public_subnet_ids" {
  description = "list of public subnet ids"
  value       = [for s in aws_subnet.public : s.id]

}

output "private_subnet_ids" {
  description = "list of private subnet ids"
  value       = [for s in aws_subnet.private : s.id]

}


output "internet_gateway_id" {
  description = "internet_gateway_ids"
  value       = aws_internet_gateway.igw.id
}

output "nat_gateway_id" {
  description = "nat_gateway_ids"
  value       = aws_nat_gateway.nat.id

}

