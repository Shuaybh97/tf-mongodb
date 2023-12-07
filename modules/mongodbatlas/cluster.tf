resource "mongodbatlas_advanced_cluster" "cluster-test" {
  project_id   = var.project_id
  name         = var.cluster_name
  cluster_type = var.cluster_type
  replication_specs {
    region_configs {
      electable_specs {
        instance_size = var.instance_size
      }
      provider_name = var.provider_name
      priority      = 7
      region_name   = var.region_name
    }
  }
}