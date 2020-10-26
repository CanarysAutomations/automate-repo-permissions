# Auto-Create GitHub Resources

A collection of tools to communicate with the repositories and organisations of GitHub. The tools can help with few inputs to

- create a repository
- Giving teams access to such repositories
- create projects for those repositories

With each release, the two exe files, one for bulk access to teams and auto build github resources, will be available.

## GitHub REST API

The endpoints used in the tool are GitHub's Rest API v3. A series of endpoints are made available by GitHub to alter resources like repositories, teams, projects and make organization level changes. For further reading on the GitHub's REST API please [click here](https://docs.github.com/en/free-pro-team@latest/rest/overview)

## Prerequisites

- only existing teams in the organization will be considered
- Admin access to the organization for creating the repositories
- Excel File with Team Names, repositories and permissions
- GitHub PAT Token must be authorized to access the required organization

## Usage Instructions :memo:

For instructions on how to use the tool, please [click here](https://github.com/CanarysAutomations/autocreate-github-resources/wiki)

## Current Tool Limitations  :x: :x:

- GitHub might change its rest endpoints used in the tool without notice in future
