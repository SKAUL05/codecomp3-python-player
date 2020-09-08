provider "google" {
  credentials = file(var.credentials_file_path)
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

data "google_iam_policy" "admin" {
  binding {
    role = "roles/appengine.appAdmin"
    members = [
      "serviceAccount:681367019640@cloudbuild.gserviceaccount.com",
    ]
  }
}



resource "google_cloudbuild_trigger" "codecomp-trigger" {
  provider = google-beta
  github {
    owner = "SKAUL05"
    name  = "codecomp3-python-player"
    push {
      branch = ".*"
    }
  }
  
  substitutions = {
      _PROJECT_ID = "terraform-271405"
    }


  filename = "cloudbuild.yaml"
}


provider "google-beta" {
  credentials = file(var.credentials_file_path)
  project     = var.project
  region      = var.region
  zone        = var.zone

}