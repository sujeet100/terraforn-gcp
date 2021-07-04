module "bucket" {
  source  = "terraform-google-modules/cloud-storage/google"
  names       = [var.name]
  project_id = var.project_id
  location   = "us-east1"
  storage_class = "STANDARD"
  set_admin_roles = true
  admins = ["user:sujeet100@gmail.com"]
  prefix = "movies"
  lifecycle_rules = [{
    action = {
      type = "Delete"
    }
    condition = {
      age        = 365
      with_state = "ANY"
    }
  }]
}