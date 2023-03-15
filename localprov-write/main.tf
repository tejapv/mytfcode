/* Alta3 Research - rzfeeser@alta3.com
Working with "for_each" within a null_resource */

/* Terraform block */
terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.1.1"
    }
    random = {
      version = "~> 3.0"
    }
  }
}

/* provider block */
provider "null" {}

provider "random" {}

resource "null_resource" "empty_space" {
    depends_on = [ random_password.password ]
    provisioner "local-exec" {
        command = <<EOT
            echo "db_password: '${random_password.password.result}'" > results.yml
        EOT
    }
}

