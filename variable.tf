variable "allow_ports" {
  description = "List of ports to open for server"
  type = list
}
variable "vpc" {
  description = "Security group VPC"
}
variable "cidr_block" {
  description = "Cidr block for open ports"
  type = list
}