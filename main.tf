module "buckets" {
  source              = "./storage"
  project_id          = var.project_id
  name                = var.name
}
