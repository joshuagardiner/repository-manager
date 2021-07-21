variable "github_owner" {
    type = string
    description = "The GitHub owner"
    default = "joshuagardiner"
}

variable "github_token" {
    type = string
    description = "The PAT for authentication to GitHub"
    sensitive = true
}

variable "github_repositories" {
    type = set(object({
        name = string
        description = string
        topics = list(string)
        visibility = string
        allow_merge_commit = bool
        allow_squash_merge = bool
        allow_rebase_merge = bool
        has_downloads = bool
        has_issues = bool
        has_wiki = bool
        has_projects = bool
    }))
    description = "List of the repositories in GitHub"
    default = [
        {
            "name" : "aws-ses-lambda-golang",
            "description": "An AWS Lambda function which invokes the SES service, written in Golang",
            "topics" : ["aws", "golang", "lambda", "simple-email-service"],
            "visibility" : "private",
            "allow_merge_commit" : true,
            "allow_rebase_merge" : true,
            "allow_squash_merge" : true,
            "has_downloads" : false,
            "has_issues" : true,
            "has_projects" : false,
            "has_wiki" : false
        },
        {
            "name" : "typescript-component-library",
            "description": "A React component library written in TypeScript with support for styled components",
            "topics" : ["components", "react", "typescript"],
            "visibility" : "private",
            "allow_merge_commit" : true,
            "allow_rebase_merge" : true,
            "allow_squash_merge" : true,
            "has_downloads" : false,
            "has_issues" : true,
            "has_projects" : false,
            "has_wiki" : false
        }
    ]
}