resource "google_compute_route" "default_internet" {
  name             = "${var.app}-default-route-internet-${var.region}-${local.env}"
  description      = "Default route to Internet applied to instances with the appserver tag"
  dest_range       = "0.0.0.0/0"
  network          = google_compute_network.app_vpc1.name
  next_hop_gateway = "default-internet-gateway"
  priority         = 2000
  tags             = ["appserver"]
}