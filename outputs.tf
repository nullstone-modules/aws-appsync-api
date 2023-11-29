output "api_endpoint" {
  value       = aws_appsync_graphql_api.this.uris["GRAPHQL"]
  description = "string ||| The endpoint for calling the graphql api."
}
