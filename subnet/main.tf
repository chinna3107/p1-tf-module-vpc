resource "aws_subnet" "main" {
  for_each = var.subnet
  vpc_id     = var.vpc_id
  cidr_block = each.value["cidr"]
  availability_zone = each.value["az"]
}

variable "subnet" {}
variable "vpc_id" {}
