terraform {
  backend "gcs" {
    
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.34.0"
    }
  }
}

provider "google" {
  project     = var.project
  region      = var.region
  zone        = var.zone
  credentials = var.credentials
}


resource "google_compute_network" "default" {
  name                    = var.name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "default" {
  name          = var.name
  ip_cidr_range = var.subnet_ip_cidr_range
  network       = google_compute_network.default.id
}

resource "google_compute_address" "default" {
  name         = var.address_name
  subnetwork   = google_compute_subnetwork.default.id
  address_type = "INTERNAL"
  address      = var.address_ip
}