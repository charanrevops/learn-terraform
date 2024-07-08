resource "null_resource" "ec2-severnames" {
  #count         =  length(var.servernames)
  for_each      = var.servernames


  command = "echo This command will execute only once during apply"


}

variable "servernames" {
  default = {
    frontendserver = {

    }
    backendserver = {

    }
    mysqlserver = {
      instance_type = "t2.micro"
    }
  }
}

# instance_type = try(each.value["instance_type"], null) == null? "t3.small" : each.value["instance_type"]
# instance_type = lookup(var.servernames[each.key],"instance_type","t3.small")
# instance_type = lookup(each.value,"instance_type","t3.small")
