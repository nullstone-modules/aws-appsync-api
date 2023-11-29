data "ns_connection" "cognito" {
  name     = "cognito"
  contract = "datastore/aws/cognito:*"
}

locals {
  cognito_user_pool_id = data.ns_connection.cognito.outputs.user_pool_id
  cognito_client_id    = data.ns_connection.cognito.outputs.client_id
}
