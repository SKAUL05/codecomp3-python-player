terraform {
  required_version = ">= 0.12.6"
  backend "gcs" {
    bucket = "codecomp-dev-skaul05-tf-infra"
    prefix = "cc3"
  }
}
