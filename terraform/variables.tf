variable project {
  description = "Project ID"
}
variable region {
  description = "Region"
  default = "europe-west6"
}
variable public_key_path {
  description = "Path to the public key used for ssh access"
}
variable private_key_path {
  description = "Path to the private key used for ssh access"
}
variable app_disk_image {
  description = "App disk image"
  default = "reddit-app"
}
variable db_disk_image {
  description = "DB disk image"
  default = "reddit-db"
}
