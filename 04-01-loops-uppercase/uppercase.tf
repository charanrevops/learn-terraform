
#0-user program

# variable"names"{
#   description="A sample list of names"
#   type=list(string)
#   default = ["apple","mango","orange","pinacolada"]
# }
#
# output "the-uppercase-of-fruits-is----" {
#   value = [for item in var.names:upper(item)]
# }


#1-user program
variable"names" {
  description = "A sample list of names"
  type        = list(string)
  default     = ["apple", "banana", "orange", "pinacolada"]
}


output "the-given-name-of-fruits-is----" {
  value = [for item in var.names:"the given fruit names is ${var.names[0]}"]
}

#2-user program
#provider "null" {}

variable "fruitnames" {
  type    = list(string)
  default = ["apple", "banana", "orange", "ananas"]
}

resource "null_resource" "fruits" {
  for_each = toset(var.fruitnames)

  triggers = {
    dername = each.value
  }
}



output "fruit_names_output" {
  value = [for i in null_resource.fruits : "the given fruit names is ${i.triggers.dername}"]
}


#3-user program
#provider "null" {}

variable "user_names" {
  type    = list(string)
  default = ["user1", "user2", "user3"]
}

resource "null_resource" "users" {
  for_each = toset(var.user_names)

  triggers = {
    name = each.value
  }
}

output "user_names_output" {
  value = [for user in null_resource.users : user.triggers.name]
}


#4-program

#provider "null" {}

variable "users" {
  type = list(object({
    name = string
    age  = number
  }))
  default = [
    { name = "user1", age = 30 },
    { name = "user2", age = 25 },
    { name = "user3", age = 40 },
  ]
}

resource "null_resource" "usersage" {
  for_each = { for u in var.users : u.name => u }

  triggers = {
    name = each.key
    age  = each.value.age
  }
}

output "users_with_tags" {
  value = { for user in null_resource.usersage : user.triggers.name => user.triggers.age }
}


#-Program Trainer and course name

#provider "null" {}

variable "users1" {
  type = list(object({
    trainer = string
    course  = string
    age     = number
  }))
  default = [
    { trainer = "ram", course = "java" ,      age = 30},
    { trainer = "prabhas", course = "python", age = 40 },
    { trainer = "ntr", course = "ansible" ,   age = 50 },
  ]
}

resource "null_resource" "users1" {
  for_each = { for u in var.users1: u.trainer => u }

  triggers = {
    trainername = each.key
    coursename  = each.value.course
    age         = each.value.age
  }
}

output "trainer-course" {
  value = { for user in null_resource.users1 : user.triggers.trainername => user.triggers.age}
}

output "trainer-age" {
  value = { for user in null_resource.users1 : "The Trainer name is ${user.triggers.trainername}"=>"and the course name is ${user.triggers.coursename}" }
}

output "trainer-name" {
  value = { for i,w in null_resource.users1 : "${i.triggers.age}" => "The Trainer name is ${w.triggers.trainername}"  if i !="ram"}
}




