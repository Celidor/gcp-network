resource "google_compute_address" "appserver" {
  name = "${var.app}-frontend-${var.region}-${local.env}"
}

resource "google_compute_instance" "appserver" {
  name         = "${var.app}-frontend-${var.region}-${local.env}"
  machine_type = var.machine_type
  zone         = var.zone

  tags = ["appserver", local.env]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.frontend_subnet1.self_link

    access_config {
        nat_ip = google_compute_address.appserver.address
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}