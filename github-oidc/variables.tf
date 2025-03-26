variable "environment" {
  description = "The environment for the resources"
  type        = string
}

variable "project_name" {
  description = "The name of the project"
  type        = string
}

variable "github_org" {
  description = "GitHub Organization name"
  type        = string
}

variable "github_repo" {
  description = "GitHub Repository name"
  type        = string
}

variable "iam_role_name" {
  description = "Name of the IAM Role for GitHub Actions"
  type        = string
  default     = "github-actions"
}
