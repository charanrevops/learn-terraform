module "expense-module" {
  source = "./childmodule"
  ami               = var.ami
  instance_type     = try(each.value["instance_type"], null) == null? "t3.small" : each.value["instance_type"]
  name              = each.key
  vpc_security_group_ids = var.vpc_security_group_ids
  for_each = var.servernames
}
#

# module "example-module" {
#     source            = "./childmodule"
#     ami               = var.ami
#     instance_type     = try(each.value["instance_type"], null) == null? "t3.small" : each.value["instance_type"]
#     name              = each.key
#     vpc_security_group_ids = var.vpc_security_group_ids
#     for_each = var.servernames
#   }
#


variable "servernames" {
  default = {
    frontendserver-1 = {

    }
    backendserver = {
      #       instance_type = "t2.micro"
    }
    mysqlserver = {
      #instance_type = "t2.micro"
    }
  }

}


variable "ami" {
    default = "ami-041e2ea9402c46c32"
}

variable "vpc_security_group_ids" {
    default = ["sg-076b871708f2b2227"]
}
