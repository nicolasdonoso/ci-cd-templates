variable "account" {
  default = "$AWS_ACCOUNT"
}

variable "region" {
  default = "$AWS_REGION"
}

variable "workspace_to_environment_map" {
  description = "Environment name (dev or pro)"
  type        = string
  default = "$CI_JOB_STAGE"
}