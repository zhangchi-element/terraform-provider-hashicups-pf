terraform {
  required_providers {
    element = {
      source = "hashicorp.com/edu/hashicups-pf"
    }
  }
}

provider "element" {
  host     = "http://localhost:19090"
  username = "education"
  password = "test123"
}

data "element_coffees" "example" {}
