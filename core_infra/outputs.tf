output "secret" {
  value = jsondecode(data.aws_secretsmanager_secret_version.secret-version.secret_string)["mongodbatlas_public_key"]
}