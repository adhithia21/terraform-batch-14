terraform {
  backend "gcs" {}
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

resource "google_compute_instance" "default" {
  name         = var.name
  machine_type = var.machine_type

  tags = var.tags

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network    = var.network
    subnetwork = var.subnetwork
    network_ip = var.network_ip

    access_config {
    }
  }
}
