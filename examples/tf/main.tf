terraform {
  required_providers {
    element = {
      source = "zhangchi-element/hashicups-pf"
      version = "0.2.1"
    }
  }
}

provider "element" {
  host     = "http://localhost:19090"
  username = "education"
  password = "test123"
}

data "element_coffees" "edu" {}

output "edu_coffees" {
  value = data.element_coffees.edu
}