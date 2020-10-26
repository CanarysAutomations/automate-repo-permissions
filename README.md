# Automate Repository access to GitHub Teams

The tool will communicate with the repositories and organisations of GitHub. The tool with the help of few inputs will 

- Giving teams bulk access to the mapped repositories in the excel file

With each release, the updated exe file will be available 

## Existing Challenges and how the tool can overcome

- During bulk migration to github, we might need to give the respective team access to every migrated repo. 
- When the repo count crosses more than 100, the process can become tedious.

### Overcoming the Challenges

- With an excel file which has the repository names and teams and permissions mapped out, the process can be completed in one shot.
- All tool needs is the GitHub PAT token and the source directory of the excel file 

## GitHub REST API

The endpoints used in the tool are GitHub's Rest API v3. A series of endpoints are made available by GitHub to alter resources like repositories, teams, projects and make organization level changes. For further reading on the GitHub's REST API please [click here](https://docs.github.com/en/free-pro-team@latest/rest/overview)

## Prerequisites

- only existing teams in the organization will be considered
- Admin access to the organization for creating the repositories
- Excel File with Team Names, Repository and permissions
- GitHub PAT Token must be authorized to access the required organization

## Usage Instructions :memo:

For instructions on how to use the tool, please [click here](https://github.com/CanarysAutomations/bulk-repository-team-access/wiki)

## Current Tool Limitations  :x: :x:

- GitHub might change its rest endpoints used in the tool without notice in future
