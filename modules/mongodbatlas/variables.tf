variable "cluster_name" {
  type = string
}

variable "project_id" {
  type = number
}

variable "provider_name" {
  type    = string
}

variable "provider_instance_size_name" {
  default = "M0"
  type    = string
}

variable "cluster_type" {
  type    = string
  default = "REPLICASET"
}

variable "mongo_db_major_version" {
  type    = string
  default = "5.0"
}

variable "cloud_backup" {
  type    = bool
  default = true
}

variable "auto_scaling_disk_gb_enabled" {
  type    = bool
  default = true
}