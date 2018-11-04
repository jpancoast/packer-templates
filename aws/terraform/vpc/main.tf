data "aws_availability_zones" "available" {}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "build"
  cidr = "${var.cidr}"

  azs            = ["${element(data.aws_availability_zones.available.names, 0)}"]
  public_subnets = ["${cidrsubnet(var.cidr, 8, 0)}"]

  tags = {
    Terraform   = "true"
    Environment = "build"
  }
}
