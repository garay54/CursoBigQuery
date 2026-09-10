variable "project_id" {
  type        = string
  description = "El ID del proyecto de Google Cloud"
  default     = "cursobigquery-508219"
}

variable "region" {
  type        = string
  default     = "us-central1"
  description = "La región para los recursos compatibles"
}

variable "dataset_id" {
  type        = string
  default     = "lab01_dataset"
  description = "El ID del dataset de BigQuery"
}

variable "bucket_name" {
  type        = string
  description = "Nombre del bucket de Google Cloud Storage"
}