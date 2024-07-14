module "expense-module" {
  source = "./childmodule"
  ami               = var.ami
  instance_type     = try(each.value["instance_type"], null) == null? "t3.small" : each.value["instance_type"]
  name              = each.key
  vpc_security_group_ids = var.vpc_security_group_ids
  for_each = var.servernames
}
