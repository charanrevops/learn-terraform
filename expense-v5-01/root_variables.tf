variable "servernames" {
  default = {
    frontend = {

    }
    backend = {
       instance_type = "t2.micro"
    }
    mysql = {
      instance_type = "t2.micro"
    }
  }
}

# variable "ami" {
#   default = "ami-041e2ea9402c46c32"
# }
#
# variable "vpc_security_group_ids" {
#   default = ["sg-076b871708f2b2227"]
# }

#DNS records

# variable "zone_id" {
#   default = "Z07982232LM1PBSHA15UZ"
# }