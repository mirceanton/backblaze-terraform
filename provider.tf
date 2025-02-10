terraform {
  required_providers {
    b2 = {
      source = "Backblaze/b2"
      version = "0.10.0"
    }
  }
}

provider "b2" {
  application_key = var.application_key
  application_key_id = var.application_key_id
}