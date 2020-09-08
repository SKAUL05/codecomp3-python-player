variable "project" {
  description = "Project ID"
  default     = "terraform-271405"
}

variable "region" {
  default = "us-central1"

}

variable "zone" {
  default = "us-central1-f"
}

variable "credentials_file_path" {
  default = "service_account.json"
}

variable "service_list" {
    type = list
    default = [
    "serviceusage.googleapis.com",
    "logging.googleapis.com",
    "iam.googleapis.com",
    "admin.googleapis.com",
    "appengine.googleapis.com",
    "storage-api.googleapis.com",
    "cloudbuild.googleapis.com"
  ]
}