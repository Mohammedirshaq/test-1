terraform {
  backend "gcs" {
    bucket  = "irshaq-sfty-gcs-1"
    prefix  = "terraform/state"
  }
}
provider "google" {
  project = "ferrous-plating-458312-q5"
  region  = "us-central1"  # Replace with your desired region
}
