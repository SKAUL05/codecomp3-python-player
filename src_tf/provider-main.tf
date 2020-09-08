terraform {
  required_version = "~> 0.19.6"
  backend "gcs" {
    bucket = "terraform-271405-infra-tf-state"
    prefix = "cc3"
    credentials = "service_account.json"
  }
}
