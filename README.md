# Terraform basics

Variables
```terraform
    variable "image" {
        default = "debian-cloud/debian8"
    }
```

Interpolations
```terraform
    "${condition ? true_expr : false_expr}"
```

## Basic commands

Initialize the project
```bash
    $ terraform init
```