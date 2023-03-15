/* Alta3 Research - rzfeeser@alta3.com
Working with "for_each" within a null_resource */

/* Terraform block */
terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.1.1"
    }
  }
}

/* provider block */
provider "null" {
  # Configuration options
}

resource "null_resource" "this" {
  provisioner "local-exec" {
    command = "echo ${var.owner} > file.txt"
  }
}

