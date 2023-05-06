terraform {
  required_providers {
    element = {
      source  = "hashicorp.com/edu/hashicups-pf"
    }
  }
  required_version = ">= 1.1.0"
}

provider "element" {
  username = "education"
  password = "test123"
  host     = "http://localhost:19090"
}

resource "element_order" "edu" {
  items = [{
    coffee = {
      id = 3
    }
    quantity = 2
    }, {
    coffee = {
      id = 5
    }
    quantity = 4
    }
  ]
}

output "edu_order" {
  value = element_order.edu
}
