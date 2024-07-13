resource "aws_instance" "node" {

  ami           = var.ami
  # instance_type = try(each.value["instance_type"], null) == null? "t3.small" : each.value["instance_type"]
  # instance_type = lookup(var.servernames[each.key],"instance_type","t3.small")
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = var.name
  }
}


