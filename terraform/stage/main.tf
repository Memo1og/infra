provider "google" {
  project = "${var.project}"
  region = "${var.region}"
}
module "app" {
  source = "../modules/app"
  public_key_path = "~/.ssh/appuser.pub"
  private_key_path = "~/.ssh/appuser"
  app_disk_image = "reddit-app"
}
module "db" {
  source = "../modules/db"
  public_key_path = "~/.ssh/appuser.pub"
  private_key_path = "~/.ssh/appuser"
  db_disk_image = "reddit-db"
}
module "vpc" {
  source = "../modules/vpc"
  source_ranges = "0.0.0.0/0"
}
