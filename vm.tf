locals {
   count = var.istest == true ? 1 : 0
}
resource "aws_instance" "test-vm" {
    ami = "ami-0e159fc62d940d348"
    instance_type = "t2.micro"

    tags = {
     Name = "vm-test"
  }
}
# resource "aws_eip" "lb" {
# instance = aws_instance.test-vm1.id
# }

# resource "aws_instance" "dev" {
#     ami = local.ami
#     instance_type = "t2.micro"
#     security_groups = var.sg-name
#     tags = var.vm-tag
#     count = local.count
# }



# resource "aws_iam_user" "test" {
#   name =  var.users[count.index]
#   count = length(var.users)
# }

resource "aws_iam_user" "test" {
  for_each = toset(var.users)
  name =  each.value
}

# output "test" {
#   value = "https://${aws_instance.test-vm1.private_ip}"
# }

data "aws_instances" "name" {
    filter {
    name   = "tag:Name"
    values = ["test"]
  }
}

