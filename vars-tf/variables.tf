variable "container_name" {
  description = "Value of the name for the Docker container"
  # basic types include string, number and bool
  type        = string
  default     = "ExampleNginxContainer"
}

variable "internal_port" {
  description = "Internal port for Docker Container"
  type        = number
  default     = 80
}

variable "external_port" {
  description = "External port for Docker container"
  type        = number
  default     = 2224
}
