resource "aws_vpc" "main" {
  cidr_block = var.cidr
}

module "subnet" {
  source   = "./subnet"
  for_each = var.subnets
  subnets   = each.value
  vpc_id   = aws_vpc.main.id
}

