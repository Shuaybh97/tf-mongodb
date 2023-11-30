data "aws_iam_policy_document" "gihub_actions" {
  statement {
    sid = "SecretsMangerFullAccess"

    actions = [
      "secretsmanager:*"
    ]

    resources = ["*"]
  }
}

resource "aws_iam_policy" "gihub_actions" {
  name   = "github_actions_policy"
  policy = data.aws_iam_policy_document.gihub_actions.json
}