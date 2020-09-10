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


resource "google_cloudbuild_trigger" "codecomp-trigger" {	
  provider = google-beta	
  name =  "codecomp-trigger-sk"	
  description = "Github Codecomp Trigger"	
  github {	
    owner = "SKAUL05"	
    name  = "codecomp3-python-player"	
    push {	
      branch = ".*"	
    }	
  }	

  substitutions = {	
      _PROJECT_ID = "codecomp-dev-skaul05"	
    }	

  filename = "cloudbuild.yaml"	
  depends_on = [	
    google_project_service.project[5],	
	google_project_service.project[1],	

  ]	
}

provider "google-beta" {
  project     = var.project
  region      = var.region
  zone        = var.zone

}