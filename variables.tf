variable "default_authorization_action" {
  type        = string
  default     = "ALLOW"
  description = <<EOF
  Select the default action to take for authorization for your API. Valid values are "ALLOW" and "DENY".
EOF
}

variable "log_level" {
  type        = string
  default     = "ERROR"
  description = <<EOF
  Select the level of logging you would like to enable. Logs are output to cloudwatch.
  Valid values are "NONE", "ERROR", and "ALL".
EOF
}