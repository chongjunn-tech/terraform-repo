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
  zone         = "us-central1-a"
  name         = "vm-test-tf-cloud"
  machine_type = "e2-medium"
  }
