variable "config" {
  description = "Configuration for the webserver"
  type = object({
    user          = string
    pwd           = string
    port          = number
    database      = string
    root_password = string
  })
}

variable "name_prefix" {
  description = "Prefix for naming the resources"
  type        = string
}