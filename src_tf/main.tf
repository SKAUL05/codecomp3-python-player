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


resource "google_project_iam_binding" "project" {
     project = var.project
     role = "roles/owner"
	 members = [
      "serviceAccount:409616791234@cloudbuild.gserviceaccount.com",
    ]
}




provider "google-beta" {
  project     = var.project
  region      = var.region
  zone        = var.zone

}