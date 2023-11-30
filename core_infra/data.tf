data "aws_secretsmanager_secret_version" "secret-version" {
  secret_id = data.aws_secretsmanager_secret.example.id
}

data "aws_secretsmanager_secret" "by-name" {
  name = "mongodb-atlas-api-key"
}