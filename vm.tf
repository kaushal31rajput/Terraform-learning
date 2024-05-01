# resource "aws_instance" "test-vm" {
#     ami = "ami-0e159fc62d940d348"
#     instance_type = "t2.micro"

#     tags = {
#      Name = "vm-test"
#   }
# }
resource "aws_eip" "lb" {
instance = aws_instance.test-vm1.id
}

resource "aws_instance" "test-vm1" {
    ami = var.ami
    instance_type = "t2.micro"
    security_groups = var.sg-name

    tags = var.vm-tag
}

output "test" {
  value = "https://${aws_instance.test-vm1.private_ip}"
}

