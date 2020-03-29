resource "google_compute_instance" "db" {
  name = "reddit-db"
  machine_type = "g1-small"
  zone = "europe-west6-b"
  tags = ["reddit-db"]
  boot_disk {
    initialize_params {
      image = "${var.db_disk_image}"
    }
  }
  network_interface {
    network = "default"
    access_config {}
  }
  metadata = {
    sshKeys = "appuser:${file(var.public_key_path)}"
  }
  connection {
    type = "ssh"
    user = "appuser"
    agent = false
    private_key = "${file(var.private_key_path)}"
    host = "reddit-app"
  }
}
