provider "google"{
    version = "~> 1.7"
    project = "cloud-academy-terraform"
    region = "us-central1"
}

variable "image" {
    default = "debian-cloud/debian8"
}

resource "google_compute_instance" "server"{
    name = "test"
    machine_type = "n1-standard-1"
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
