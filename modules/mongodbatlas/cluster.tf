resource "mongodbatlas_cluster" "cluster-test" {
  project_id   = var.project_id
  name         = var.cluster_name
  cluster_type = var.cluster_type
  
  cloud_backup = var.cloud_backup
  auto_scaling_disk_gb_enabled = var.auto_scaling_disk_gb_enabled
  mongo_db_major_version       = var.mongo_db_major_version

  # Provider Settings "block"
  provider_name               = var.provider_name
  provider_instance_size_name = var.provider_instance_size_name
}