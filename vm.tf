resource "aws_instance" "test-vm1" {
  ami           = "ami-0e159fc62d940d348"
  instance_type = "t2.micro"
  key_name = "key-pair-tf"
  tags = {
    Name = "vm-test"
  }

connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("key-pair-tf.pem")
    host     = self.public_ip
  }
  provisioner "remote-exec" {
    inline = [
      "sudo yum -y install nginx",
      "sudo systemctl start nginx",
    ]
  }
}





# locals {
#   count = var.istest == true ? 1 : 0
# }
# resource "aws_instance" "test-vm1" {
#   ami           = "ami-0e159fc62d940d348"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "vm-test"
#   }
#   lifecycle {
#     prevent_destroy = true
#   }

#   provisioner "local-exec" {
#   command = "echo ${aws_instance.test-vm1.private_ip} >> private_ips.txt"
# }
# }

# resource "aws_instance" "test-vm2" {
#   ami           = "ami-0e159fc62d940d348"
#   instance_type = "t2.micro"
#   tags = {
#     Name = "vm-test"
#   }
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


# output "test" {
#   value = "https://${aws_instance.test-vm1.private_ip}"
# }

# data "aws_instances" "name" {
#     filter {
#     name   = "tag:Name"
#     values = ["vm-test"]
#   }
# }

# output "instance-id" {
#   value = data.aws_instances.name.ids
# }



# resource "aws_instance" "test-vm3" {
#   ami           = "ami-0e159fc62d940d348"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "vm-test"
#   }
#   lifecycle {
#     prevent_destroy = true
#   }

#   provisioner "local-exec" {
#   command = "echo ${aws_instance.test-vm1.private_ip} >> private_ips.txt"
# }
# }

