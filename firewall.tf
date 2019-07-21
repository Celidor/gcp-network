resource "google_compute_firewall" "ssh" {
  name        = "allow-ssh-inbound-${var.app}-${local.env}"
  network     = "${google_compute_network.app_vpc1.name}"
  priority    = 500

  allow {
    protocol  = "tcp"
    ports     = ["22"]
  }

  target_tags = ["appserver"]
}

resource "google_compute_firewall" "egress" {
  name        = "allow-all-outbound-${var.app}-${local.env}"
  network     = "${google_compute_network.app_vpc1.name}"
  priority    = 1000
  direction = "EGRESS"

  allow {
    protocol  = "tcp"
  }  
}