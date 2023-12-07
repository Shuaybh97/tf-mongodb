module "bootstrap" {
  source = "trussworks/bootstrap/aws"

  region              = "us-east-1"
  account_alias       = "mongodb-module"
  dynamodb_table_name = "terraform-state-lock-mongodb-atlas"
  kms_master_key_id   = aws_kms_key.state_bucket.id
}
