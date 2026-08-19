# AWS Cloud Platform
provider "aws" {
  region     = "var.region"
  access_key = "var.aws_access_key"
  secret_key = "var.aws_secret_key"
  version = "~> 2.0"

    default_tags {

        tags = {

            CreatedBy = "Harbormaster"

            Blueprint = "Spring Boot 3.5"

            DomainModel = "Banking Industry Domain Model"

            CertificationId = "${certificationIdentifier}"

        }
    }
}