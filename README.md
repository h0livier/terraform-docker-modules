# Terraform Modules for docker

This repository contains some terraform modules that can be used in a local docker environment. 

## Usage

First, you should make sure you have already installed terraform on your computer.

Once done, you can either change the `main.tf` and `variables.tf` files or use the different modules on your own project by importing this repository.
To do this, you only have to write the following block:

```hcl
module "module_name" {
  source = "github.com/h0livier/terraform-docker-modules//modules/module_folder"

  parameters...
}
```

Every time you need to access a new module, you'll have to re-run the init command:
```sh
terraform init
```

To launch the project with a tfvars file, you can use the following command:
```sh
terraform [plan|apply] -var-file='.\tfvars\development.tfvars'
```