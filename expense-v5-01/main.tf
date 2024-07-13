module "expense-module" {
  source = "./childmodule"
  ami               = var.ami
  instance_type     = each.value["instance_type"]
  name              = each.key
  vpc_security_group_ids = var.vpc_security_group_ids
  for_each = var.servernames
}

