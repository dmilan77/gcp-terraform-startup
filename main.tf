# gcloud auth application-default login
provider "google" {
  version = "~> 3.85.0"
  region  = var.region
  #impersonate_service_account = var.impersonate_service_account
}

resource "google_service_account" "compute_engine_service_account" {
  account_id   = var.compute_engine_service_account
  display_name = "GKE Compuete Engine Service Account"
  project = var.project_id
}


resource "google_storage_bucket" "bucket" {
  name     = "${var.project_id}-test-bucket"
  location = var.region
  project = var.project_id
}