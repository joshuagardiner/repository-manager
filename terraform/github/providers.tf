terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.20.1"
    }
  }
}

provider "github" {
  owner = var.github_owner
  token = var.github_token
}