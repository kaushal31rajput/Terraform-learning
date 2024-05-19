resource "aws_eip" "lb" {
instance = aws_instance.test-vm2.id
}