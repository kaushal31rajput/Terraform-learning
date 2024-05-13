resource "aws_iam_user" "test" {
  count = length(var.users)
  name     = var.users[count.index]
}

output "arn" {
    value = aws_iam_user.test[*].arn
}

output "name" {
    value = aws_iam_user.test[*].id
}

output "userarn" {
    value = zipmap(aws_iam_user.test[*].id, aws_iam_user.test[*].arn)
}