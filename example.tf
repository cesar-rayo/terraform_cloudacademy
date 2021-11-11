provider "google" {
    version = "~> 1.7"
    project = "cloud-academy-terraform"
    region = "us-central1"
}

provider "aws" {
    version = ">= 1.2, < 1.12"
    region = "us-west-2"
}

variable "image" {
    default = "debian-cloud/debian8"
}

resource "google_compute_instance" "server"{
    name = "test"
    machine_type = "n1-standard-1"
    #machine_type = "${var.env == "production" ? "n1-highmem-64" : "n1-standard-1"}"
    tags = ["team-a","team-b"]

    boot_disk {
      initialize_params{
          image = "${var.image}"
      }
    }
    
    network_interface {
      network = "default"
    }
}

# Interpolation Conditions
# ${condition ? true_expr : false_expr}
