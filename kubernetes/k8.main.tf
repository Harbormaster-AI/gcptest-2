
provider "kubernetes" {
  host = "aws"
  username = var.kubernetes_username
  password = var.kubernetes_password
  version = "~> 1.10"
}

#Declare_K8_Pods()
#Declare_K8_Services()