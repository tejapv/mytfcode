terraform {
  required_providers {
    http = {
      source = "hashicorp/http"
      version = "3.0.1"
    }
    null = {
      source = "hashicorp/null"
      version = "3.1.1"
    }
  }
}

provider "null" {}

provider "http" {
  # Configuration options
}

