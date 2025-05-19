terraform {
  backend "gcs" {
    bucket  = "my-terraform-state0"
    prefix  = "prod/terraform.tfstate"
  }
}
