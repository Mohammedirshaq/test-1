terraform {
  backend "gcs" {
    bucket  = "irshaq-sfty-gcs-1"
    prefix  = "terraform/state"
  }
}
