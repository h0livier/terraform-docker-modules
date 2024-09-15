variable "postgres_config" {
    description = "Configuration for the webserver"
    type = object({
        user = string
        pwd = string
        port = number
        database = string
    })
}

variable "name_prefix" {
  description = "Prefix for naming the resources"
  type        = string
}