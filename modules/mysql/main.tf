resource "docker_network" "app_network" {
  name = "${var.name_prefix}_network"
}

resource "docker_image" "app_mysql" {
  name         = "mysql:8.4"
  keep_locally = false
}

resource "docker_container" "app_mysql" {
  image = docker_image.app_mysql.image_id
  name  = "${var.name_prefix}_db"
  networks_advanced {
    name = "${var.name_prefix}_network"
  }
  ports {
    internal = 3306
    external = var.config.port
  }
  env = [
    "MYSQL_ROOT_PASSWORD=${var.config.root_password}",
    "MYSQL_PASSWORD=${var.config.pwd}",
    "MYSQL_USER=${var.config.user}",
    "MYSQL_DATABASE=${var.config.database}"
  ]
}