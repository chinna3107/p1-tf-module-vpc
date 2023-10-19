resource "aws_vpc" "main" {
  cidr_block = var.cidr
}

module "subnet" {
  source = "./subnet"
  for_each = var.subnet
  subnet = each.value
  vpc_id = aws_vpc.main.id
}
