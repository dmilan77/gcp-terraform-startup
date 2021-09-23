variable "region" {
  description = "The region to host the cluster in"
}

variable "project_id" {
  description = "The project ID to host the cluster in"
}

variable "compute_engine_service_account" {
  description = "Service account to associate to the nodes in the cluster"
}
