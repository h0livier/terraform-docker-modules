module "postgres1" {
  source        = "github.com/h0livier/terraform-docker-modules//modules/postgres"

  name_prefix = "postgres1"
  postgres_config = var.postgres_config
}

module "mysql1" {
  source        = "github.com/h0livier/terraform-docker-modules//modules/mysql"

  name_prefix = "mysql1"
  config = var.mysql_config
}