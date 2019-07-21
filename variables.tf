# provider variables
variable "project" {
    default = ""
}

variable "region" {
    default = "europe-west1"
}

variable "zone" {
    default = "europe-west1-c"
}

# deployment variables

variable "app" {
    default = "app"
}

variable "region_2" {
    default = "us-central1"
}

variable "machine_type" {
    default = "n1-standard-1"
}