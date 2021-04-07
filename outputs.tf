output "security_group_id" {
  description = "The ID of the SG"
  value       = concat(aws_security_group.standart.*.id, [""])[0]
}
output "security_group_vpc_id" {
  description = "The VPC ID"
  value = aws_security_group.standart.*.vpc_id
}

output "this_security_group_owner_id" {
  description = "The owner ID"
  value = aws_security_group.standart.*.owner_id
}

output "this_security_group_name" {
  description = "The name of the security group"
  value = aws_security_group.standart.*.name
}

output "this_security_group_description" {
  description = "The description of the security group"
  value = aws_security_group.standart.*.description
}