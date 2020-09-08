provider "google" {
  credentials = file(var.credentials_file_path)
  project     = var.project
  region      = var.region
  zone        = var.zone
}

resource "google_storage_bucket" "static-site" {
  name          = "${var.project}-infra-tf-state"
  location      = "US"
}

terraform {
  backend "gcs" {
    bucket = "${var.project}-infra-tf-state"
    prefix = "cc3"
    credentials = "service_account.json"
  }
}

provider "google-beta" {
  credentials = file(var.credentials_file_path)
  project     = var.project
  region      = var.region
  zone        = var.zone

}