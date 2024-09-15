resource "docker_network" "app_network" {
  name = "${var.name_prefix}_network"
}

resource "docker_image" "app_postgres" {
  name = "postgres:13"
  keep_locally = false
}

resource "docker_container" "app_postgres" {
  image = docker_image.app_postgres.image_id
  name = "${var.name_prefix}_db"
  networks_advanced {
    name = "${var.name_prefix}_network"
  }
  ports {
    internal = 5432
    external = var.postgres_config.port
  }
  env = [
    "POSTGRES_PASSWORD=${var.postgres_config.pwd}",
    "POSTGRES_USER=${var.postgres_config.user}",
    "POSTGRES_DB=${var.postgres_config.database}"
  ]
}