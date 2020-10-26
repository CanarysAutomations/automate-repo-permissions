# Automate teams repository access

## Overview

Users can provide GitHub Teams access to repositories with varying access levels. The tool with the help of few inputs will **Provide bulk access for teams to the mapped repositories in the excel file**. With each release, the updated exe will be available.

## Current Challenges

- When a large number of repositories are migrated to GitHub, we will need to give access to each migrated repo to the relevant team
- The process becomes repititive, when there are 100s of repositories

## Benefits

- The process can be completed in one shot with an excel file which has the repository names, teams and permissions mapped
- All tool needs is the GitHub PAT token and the source directory of the excel file 

## GitHub REST API

The endpoints used in the tool are GitHub's Rest API v3. A series of endpoints are made available by GitHub to alter resources like repositories, teams, projects and make organization level changes. For further reading on the GitHub's REST API please [click here](https://docs.github.com/en/free-pro-team@latest/rest/overview)

## Prerequisites

- Only current organizational teams will be considered
- Admin access to the organization for creating the repositories
- Excel File with Team Names and permissions
- GitHub PAT Token must be authorized to access the required organization

## Download :arrow_down:

Download the tool from [here](https://github.com/CanarysAutomations/automate-repository-team-access/releases)

## Usage Instructions :memo:

For instructions on how to use the tool, please [click here](https://github.com/CanarysAutomations/bulk-repository-team-access/wiki)

## Current Tool Limitations  :x: :x:

- In the future, GitHub could change its remaining endpoints used in the tool without warning
