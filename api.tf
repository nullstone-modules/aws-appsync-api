resource "aws_appsync_graphql_api" "this" {
  authentication_type = "AMAZON_COGNITO_USER_POOLS"
  name                = local.resource_name

  user_pool_config {
    aws_region     = data.aws_region.this.name
    default_action = var.default_authorization_action
    user_pool_id   = local.cognito_user_pool_id
  }

  log_config {
    cloudwatch_logs_role_arn = aws_iam_role.logs.arn
    field_log_level          = var.log_level
  }

  tags = local.tags
}
