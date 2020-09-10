provider "google" {
  project     = var.project
  region      = var.region
  zone        = var.zone
}


resource "google_project_service" "project" {
  project = var.project
  count   = length(var.service_list)
  service = var.service_list[count.index]

  disable_dependent_services = true
}




provider "google-beta" {
  project     = var.project
  region      = var.region
  zone        = var.zone

}