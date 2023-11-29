data "ns_connection" "api-gateway" {
  name     = "api-gateway"
  contract = "ingress/aws/api-gateway:*"
}

locals {
  api_endpoint = data.ns_connection.api-gateway.outputs.public_urls[0]
}
