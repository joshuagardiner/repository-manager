resource "github_repository" "repository" {
    for_each = { for repo in var.github_repositories : repo.name => repo }

    name = each.value.name
    description = each.value.description
    topics = each.value["topics"]
    visibility = each.value.visibility
    allow_merge_commit = each.value.allow_merge_commit
    allow_rebase_merge = each.value.allow_rebase_merge
    allow_squash_merge = each.value.allow_squash_merge
    has_downloads = each.value.has_downloads
    has_issues = each.value.has_issues
    has_projects = each.value.has_projects
    has_wiki = each.value.has_wiki

    archive_on_destroy = true
    delete_branch_on_merge = true
    vulnerability_alerts = true
}