resource "aws_kms_key" "state_bucket" {
  description             = "kms-state-bucket"
  deletion_window_in_days = 10
}