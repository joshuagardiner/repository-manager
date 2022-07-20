variable "github_owner" {
  type        = string
  description = "The GitHub owner"
  default     = "joshuagardiner"
}

variable "github_token" {
  type        = string
  description = "The PAT for authentication to GitHub"
  sensitive   = true
}

variable "github_repositories" {
  type = set(object({
    name               = string
    homepage_url       = string
    description        = string
    topics             = list(string)
    visibility         = string
    allow_merge_commit = bool
    allow_squash_merge = bool
    allow_rebase_merge = bool
    has_downloads      = bool
    has_issues         = bool
    has_wiki           = bool
    has_projects       = bool
    branch_protection = set(object({
      pattern        = string
      enforce_admins = bool
      status_checks  = list(string)
    }))
  }))
  description = "List of the repositories in GitHub"
  default = [
    {
      "name" : "coding-challenges",
      "homepage_url" : "",
      "description" : "A series of coding challenges to enhance my coding ability.",
      "topics" : ["full-stack", "react", "typescript", "web-development"],
      "visibility" : "private",
      "allow_merge_commit" : true,
      "allow_rebase_merge" : true,
      "allow_squash_merge" : true,
      "has_downloads" : false,
      "has_issues" : true,
      "has_projects" : false,
      "has_wiki" : false,
      "branch_protection" : []
    },
    {
      "name" : "elland-golf-club",
      "homepage_url" : "",
      "description" : "A Next.js web application written in React with TypeScript and deployed using Netlify",
      "topics" : ["nextjs", "react", "typescript", "netlify"],
      "visibility" : "private",
      "allow_merge_commit" : true,
      "allow_rebase_merge" : true,
      "allow_squash_merge" : true,
      "has_downloads" : false,
      "has_issues" : true,
      "has_projects" : false,
      "has_wiki" : true,
      "branch_protection" : []
    },
    {
      "name" : "jg-dev",
      "homepage_url" : "https://joshuagardiner.dev/",
      "description" : "A Next.js web application written in React with TypeScript and deployed using Netlify",
      "topics" : ["nextjs", "react", "typescript", "netlify"],
      "visibility" : "public",
      "allow_merge_commit" : true,
      "allow_rebase_merge" : true,
      "allow_squash_merge" : true,
      "has_downloads" : false,
      "has_issues" : true,
      "has_projects" : false,
      "has_wiki" : false,
      "branch_protection" : [
        {
          "pattern" : "main",
          "enforce_admins" : true,
          "status_checks" : [
            "Build"
          ],
        },
        {
          "pattern" : "develop",
          "enforce_admins" : true,
          "status_checks" : [
            "Build",
          ],
        }
      ]
    },
    {
      "name" : "next-react-web-app",
      "homepage_url" : "",
      "description" : "A Next.js web application written in React with TypeScript and deployed using Vercel",
      "topics" : ["nextjs", "react", "typescript", "vercel"],
      "visibility" : "private",
      "allow_merge_commit" : true,
      "allow_rebase_merge" : true,
      "allow_squash_merge" : true,
      "has_downloads" : false,
      "has_issues" : true,
      "has_projects" : false,
      "has_wiki" : false,
      "branch_protection" : []
    },
    {
      "name" : "typescript-component-library",
      "homepage_url" : "",
      "description" : "A React component library written in TypeScript with support for styled components",
      "topics" : ["components", "react", "typescript"],
      "visibility" : "public",
      "allow_merge_commit" : true,
      "allow_rebase_merge" : true,
      "allow_squash_merge" : true,
      "has_downloads" : false,
      "has_issues" : true,
      "has_projects" : false,
      "has_wiki" : false,
      "branch_protection" : [
        {
          "pattern" : "main",
          "enforce_admins" : true,
          "status_checks" : [
            "Build"
          ],
        },
        {
          "pattern" : "develop",
          "enforce_admins" : true,
          "status_checks" : [
            "Build",
          ],
        }
      ]
    }
  ]
}

variable "github_issue_labels" {
  type = set(object({
    repository = string
    name       = string
    color      = string
  }))
  description = "List of the issue labels in GitHub"
  default = [
    {
      "repository" = "elland-golf-club"
      "name"       = "bug"
      "color"      = "C70039"
    },
    {
      "repository" = "elland-golf-club"
      "name"       = "dependencies"
      "color"      = "F333FF"
    },
    {
      "repository" = "elland-golf-club"
      "name"       = "documentation"
      "color"      = "33A8FF"
    },
    {
      "repository" = "elland-golf-club"
      "name"       = "enhancement"
      "color"      = "33FF3C"
    }
  ]
}