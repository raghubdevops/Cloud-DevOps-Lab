Day 1 - Complete DevOps Setup Activity Log (Detailed)
1. Accounts Created

You created and configured the following accounts:

Microsoft Azure Account (for cloud resources and AZ-104 labs)
GitHub Account: raghubdevops (for source control and repositories)
Azure DevOps Organization: raghubdevops (for CI/CD pipelines)
Docker Hub Account: raghubdevops (for container image storage and sharing)

These accounts will be used across all DevOps tools and interview labs.

2. VS Code Installation

You installed Visual Studio Code as your primary development environment.

Purpose:

Writing Terraform scripts (.tf)
Creating Kubernetes YAML files
Writing Dockerfiles
Managing Azure DevOps pipelines (azure-pipelines.yml)
Writing PowerShell scripts
Maintaining documentation (.md files)
3. Git Installation and Configuration
Installed Git

Verified installation:

git --version
Configured Git identity:
git config --global user.name "Raghu B"
git config --global user.email "your-email"

Verified:

git config --list
Initialized local repository:
cd C:\DevOpsLab\Cloud-DevOps-Lab
git init

Output:

Repository initialized on master branch
Git status check:
git status

Output:

No commits initially
Untracked folders detected after README creation
4. Folder Structure Created

You created a structured DevOps lab directory:

Cloud-DevOps-Lab/
│
├── Azure
├── AzureDevOps
├── Terraform
├── Kubernetes
├── Docker
├── GitHub
├── PowerShell
├── YAML
├── InterviewQuestions
└── Certifications

Purpose:

Organized workspace for all DevOps domains
Used for real project simulation and interview preparation
5. README File Created

You created:

README.md

Content:

Cloud-DevOps-Lab - Azure, DevOps, Terraform, Kubernetes, Docker, GitHub, PowerShell learning repository.
6. First Git Commit

You staged and committed files:

git add .
git commit -m "Initial repository setup"

Verified commit:

git log --oneline

Output:

First commit created successfully
7. GitHub Repository Creation and Connection

You created GitHub repository:

Cloud-DevOps-Lab

Then connected local repo:

git remote add origin https://github.com/raghubdevops/Cloud-DevOps-Lab.git

Verified:

git remote -v
8. First Push to GitHub (Issue + Fix)
Attempted push:
git push -u origin main
Error encountered:
remote: Permission to raghubdevops/Cloud-DevOps-Lab.git denied to brrr1570
fatal: unable to access repository (403)
Root cause:

Git was authenticated using wrong GitHub account (brrr1570 instead of raghubdevops).

Fix steps:
Opened Windows Credential Manager
Removed GitHub cached credentials
Re-authenticated using correct GitHub account
Successful authentication:
Authentication successful
Final push:
git push -u origin main

Result:

Code successfully uploaded to GitHub repository
9. Azure CLI Installation and Setup

Installed Azure CLI and verified:

az version
az login
az account show

Purpose:

Manage Azure resources via CLI
Used for AZ-104 labs and automation
10. Terraform Installation

Installed Terraform and verified:

terraform version

Purpose:

Infrastructure as Code (IaC)
Azure resource provisioning using code
11. Docker Installation + First Container Run

Installed Docker Desktop and configured WSL2 backend.

Issue faced:

Docker Desktop did not start initially.

Root cause:

WSL2 had no Linux distribution installed.

Fix:

Installed Ubuntu via WSL:

wsl --install -d Ubuntu

Verified:

wsl -l -v

Output:

Ubuntu installed and running on WSL2
Docker verification:
docker version
docker run hello-world

Output:

Hello from Docker!
12. WSL2 and Ubuntu Setup

Installed and configured:

WSL2 enabled
Ubuntu Linux distribution installed
Verified WSL status

Commands:

wsl --status
wsl -l -v
wsl

Purpose:

Required backend for Docker Desktop
Linux environment on Windows
13. Kubernetes Tools Installed
kubectl installed:
kubectl version --client
Helm installed:
helm version

Purpose:

kubectl → Kubernetes cluster management
Helm → Kubernetes package manager
14. Final Outcome of Day 1

By the end of the day, the full DevOps environment is ready:

Installed tools:
Git
Azure CLI
Terraform
Docker Desktop
WSL2 + Ubuntu
kubectl
Helm
VS Code
Platforms configured:
GitHub
Azure DevOps
Docker Hub
Azure Portal