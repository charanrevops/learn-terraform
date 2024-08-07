variable "servernames" {
  default = {
    frontendserver = {
      instance_type="t3.micro"

    }
    backendserver = {
      instance_type="t2.micro"
    }
    mysqlserver = {
      instance_type = "t2.micro"
    }
  }
}




variable "ami" {
  default = "ami-041e2ea9402c46c32"
}
# variable "instance_type" {}
variable "vpc_security_group_ids" {
  default = ["sg-076b871708f2b2227"]
}
# variable "name" {
# }