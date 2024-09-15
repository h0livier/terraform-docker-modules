variable "postgres_config" {
    description = "Configuration for the webserver"
    type = object({
        user = string
        pwd = string
        port = number
        database = string
    })
}

variable "mysql_config" {
    description = "Configuration for the webserver"
    type = object({
        user = string
        pwd = string
        port = number
        database = string
        root_password = string
    })
}