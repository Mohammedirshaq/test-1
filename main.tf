terraform {
  backend "gcs" {
    bucket  = "irshaq-sfty-gcs-1"
    prefix  = "terraform/state"
  }
}
provider "google" {
  project = "ferrous-plating-458312-q5"
  region  = "us-central1-c"  # Replace with your desired region
}

resource "google_compute_instance" "vm_instance" {
  name         =  "vm0"
  machine_type = "e2-micro"  # Replace with your desired machine type
  zone         = "us-central1-c"  # Replace with your desired zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"  # Replace with your desired image
    }
  }

  network_interface {
    network = "default"

    access_config {
      # Ephemeral external IP
    }
  }
}

output "instance_private_ip" {
  value = google_compute_instance.vm_instance.network_interface[0].network_ip
}
