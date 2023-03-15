terraform {
  cloud {
    organization = "tejapv-org"

    workspaces {
      name = "test-terraform"
    }
  }
}
