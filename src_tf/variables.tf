variable "project" {
  description = "Project ID"
  default     = "codecomp-dev-skaul05"
}

variable "region" {
  default = "us-central1"

}

variable "zone" {
  default = "us-central1-f"
}

variable "credentials_file_path" {
  default = "service-account.json"
}

variable "service_list" {
    type = list
    default = [
	"cloudresourcemanager.googleapis.com",
    "serviceusage.googleapis.com",
    "logging.googleapis.com",
    "iam.googleapis.com",
    "admin.googleapis.com",
    "appengine.googleapis.com",
    "storage-api.googleapis.com",
    "cloudbuild.googleapis.com",

  ]
}