provider "google" {
  credentials = file(var.credentials_file_path)
  project     = var.project
  region      = var.region
  zone        = var.zone
}

resource "google_storage_bucket" "gcs-bucket" {
  name          = "infra-tf-state"
  location      = "US"
}


provider "google-beta" {
  credentials = file(var.credentials_file_path)
  project     = var.project
  region      = var.region
  zone        = var.zone

}