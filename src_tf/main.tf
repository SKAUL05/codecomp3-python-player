provider "google" {
  credentials = file(var.credentials_file_path)
  project     = var.project
  region      = var.region
  zone        = var.zone
}

resource "google_storage_bucket" "tf-state" {
  name          = "terraform-271405-infra-tf-state"
  project       = var.project
  location      = var.region
  force_destroy = true
  storage_class = "REGIONAL"
  versioning {
    enabled = true
  }
}



provider "google-beta" {
  credentials = file(var.credentials_file_path)
  project     = var.project
  region      = var.region
  zone        = var.zone

}