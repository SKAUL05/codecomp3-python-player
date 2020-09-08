terraform {
  required_version = ">= 0.12"
  backend "gcs" {
    bucket = "terraform-271405-infra-tf-state"
    prefix = "cc3"
    credentials = "service_account.json"
  }
}
provider "google" {
  credentials = file(var.credentials_file_path)
  project     = var.project
  region      = var.region
  zone        = var.zone
}