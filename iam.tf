variable "user_names" {
  description = "IAM usernames"
  type        = list(string)
  default     = "users_name"
}

resource "aws_iam_user" "example" {
  count = length(var.user_names)
  name  = var.user_names[count.index]
}