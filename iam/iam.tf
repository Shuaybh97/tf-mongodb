data "aws_iam_role" "iam_role" {
  name = "github-actions-role"
}

# resource "aws_iam_role_policy_attachment" "policy_attachment" {
#   role       = data.aws_iam_role.iam_role.name
#   policy_arn = aws_iam_policy.gihub_actions.arn
# }
