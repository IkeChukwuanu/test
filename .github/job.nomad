job "[[.service_name]]" {
  datacenters = ["us-central1"]
  type        = "service"

  group "[[.service_name]]" {
    task "[[.service_name]]" {
      driver = "java"

      artifact {
        source      = "[[.artifact_url]]"
        mode        = "file"
        destination = "local/[[.artifact_file]]"
      }

      config {
        jar_path = "local/[[.artifact_file]]"
        args = [
          "--spring.profiles.active=local",
        ]
      }

      resources {
				cpu    = 500 # MHz
				memory = 300 # MB
        network {
          port "http" {}
        }
      }

      service {
        name = "[[.service_name]]"
        tags = ["[[.service_name]]","urlprefix-/"]
        port = "http"
      }
    }

    restart {
			attempts = 5
		}
  }
}
