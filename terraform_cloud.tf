terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.34.0"
    }
  }
}

provider "google" {
  # Configuration options
}

resource "google_compute_instance" "vm" {
  project="terraform-gcp-361102"
  zone         = "us-central1-a"
  name         = "vm-test-tf-cloud"
  machine_type = "e2-medium"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }


  network_interface {
    network = "default"

  }
  }
