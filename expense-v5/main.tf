module "newappmodule" {

  for_each          = var.servernames
  source            ="./appmodule"


  ami               = var.ami
  instance_type     = each.value["instance_type"]
  name              = each.key
  vpc_security_group_ids = var.vpc_security_group_ids
}