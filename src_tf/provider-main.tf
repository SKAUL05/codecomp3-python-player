terraform {
  required_version = ">= 0.12.6"
  backend "gcs" {
    bucket = "infra-tf-state-terraform-271405"
    prefix = "cc3"
    credentials = "service_account.json"
  }
}
