module "mongodbatlas" {
  source = "../modules/mongodbatlas"
  cluster_name = "tf-mongodb-example"
  project_id = "656609c4b1d783082c02d45b"
  provider_name = "AWS"
}