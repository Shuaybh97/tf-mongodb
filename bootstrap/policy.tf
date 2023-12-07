data "aws_iam_policy_document" "bootstrap_policy" {
  statement {
    sid = "S3BackendAccess"

    actions = [
      "s3:ListBucket",
      "s3:GetObject",
      "s3:PutObject",
      "s3:DeleteObject"
    ]

    resources = [
      "*",
    ]
  }

  statement {
    sid = "IAMFullAccess"

    actions = [
      "iam:*"
    ]

    resources = ["*"]
  }

  statement {
    sid = "DynamoDBStateLocking"

    actions = [
      "dynamodb:DescribeTable",
      "dynamodb:GetItem",
      "dynamodb:PutItem",
      "dynamodb:DeleteItem"
    ]

    resources = ["*"]
  }

  statement {
    sid = "KMSFullAccess"

    actions = [
      "kms:*"
    ]

    resources = ["*"]
  }

}

resource "aws_iam_policy" "bootstrap_policy" {
  name   = "github_actions_tf_state"
  policy = data.aws_iam_policy_document.bootstrap_policy.json
}