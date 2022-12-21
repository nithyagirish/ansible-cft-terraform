variable "user_names" {
  description = "IAM usernames"
  type        = list(string)
  default     = users_name
}

resource "aws_iam_user" "example" {
  count = length(var.user_names)
  name  = var.user_names[count.index]
}

resource "aws_iam_policy_attachment" "test-attach" {
  name       = "test-attachment"
  count = length(var.user_names)
  users = ["element(var.user_names,count.index)"]
  policy_arn = "policy_arn1"
}