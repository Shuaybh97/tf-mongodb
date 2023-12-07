data "aws_secretsmanager_secret_version" "secret-version" {
  secret_id = data.aws_secretsmanager_secret.secret.id
}

data "aws_secretsmanager_secret" "secret" {
  name = "mongodb-atlas-api-key"
}