resource "aws_vpc" "main" {
  cidr_block = var.cidr
}

resource "aws_subnet" "main" {
  for_each = var.subnet
    vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "az"
}