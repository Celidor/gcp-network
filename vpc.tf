resource "google_compute_network" "app_vpc1" {
  name                            = "${var.app}-vpc-${local.env}"
  auto_create_subnetworks         = false
  delete_default_routes_on_create = true
}

resource "google_compute_subnetwork" "frontend_subnet1" {
  name                            = "${var.app}-frontend-${var.region}-${local.env}"
  ip_cidr_range                   = "10.0.0.0/16"
  region                          = "${var.region}"
  network                         = "${google_compute_network.app_vpc1.self_link}"
}

resource "google_compute_subnetwork" "frontend_subnet2" {
  name                            = "${var.app}-frontend-${var.region_2}-${local.env}"
  ip_cidr_range                   = "10.128.0.0/16"
  region                          = "${var.region_2}"
  network                         = "${google_compute_network.app_vpc1.self_link}"
}

resource "google_compute_subnetwork" "backend_subnet1" {
  name                            = "${var.app}-backend-${var.region}-${local.env}"
  ip_cidr_range                   = "10.1.0.0/16"
  region                          = "${var.region}"
  network                         = "${google_compute_network.app_vpc1.self_link}"
}

resource "google_compute_subnetwork" "backend_subnet2" {
  name                            = "${var.app}-backend-${var.region_2}-${local.env}"
  ip_cidr_range                   = "10.129.0.0/16"
  region                          = "${var.region_2}"
  network                         = "${google_compute_network.app_vpc1.self_link}"
}