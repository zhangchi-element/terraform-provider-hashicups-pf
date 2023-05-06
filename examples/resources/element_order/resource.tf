# Manage example order.
resource "element_order" "example" {
  items = [
    {
      coffee = {
        id = 3
      }
      quantity = 2
    },
  ]
}
