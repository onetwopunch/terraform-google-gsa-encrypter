terraform {
  required_version = "> 0.7.0"
  required_providers {
    google = {
      version = "~> 3.35.0"
    }
    archive = {
      version = "~> 1.3.0"
    }
    local = {
      version = "~> 1.4.0"
    }
  }
}