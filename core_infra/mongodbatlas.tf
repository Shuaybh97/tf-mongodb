module "mongodbatlas" {
  source = "../modules/mongodbatlas"
  cluster_name = "tf-mongodb-example"
  project_id = var.project_id
}