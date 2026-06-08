1. What is YAML?

YAML = “Yet Another Markup Language”

Key idea:

Human-readable configuration format.

2. Basic YAML Structure
name: Raghu
role: DevOps Engineer
skills:
  - Azure
  - Terraform
  - Kubernetes
3. YAML Rules (IMPORTANT)
Indentation matters (spaces only)
No tabs allowed
Key-value format
Case-sensitive
4. YAML in Azure DevOps Pipeline
trigger:
- main

pool:
  vmImage: ubuntu-latest

steps:
- script: echo "Build started"
5. YAML in GitHub Actions
name: CI Pipeline

on: push

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - run: echo "Hello GitHub Actions"
6. YAML in Kubernetes (VERY IMPORTANT)
apiVersion: v1
kind: Pod
metadata:
  name: mypod
spec:
  containers:
  - name: nginx
    image: nginx
7. YAML vs JSON
| Feature     | YAML   | JSON   |
| ----------- | ------ | ------ |
| Readability | High   | Medium |
| Complexity  | Low    | High   |
| Usage       | DevOps | APIs   |

8. Multi-stage YAML Pipeline (INTERVIEW LEVEL)
stages:
- stage: Build
  jobs:
  - job: BuildJob
    steps:
    - script: echo "Building"

- stage: Deploy
  jobs:
  - job: DeployJob
    steps:
    - script: echo "Deploying"
9. Real DevOps Flow Using YAML
Git Push → YAML Trigger → Build → Docker Image → Push → Deploy to AKS
10. Common Interview Question
Question:

Why is YAML used in DevOps pipelines?

Answer:

YAML is used because it is human-readable, lightweight, and ideal for defining configuration as code in CI/CD pipelines, Kubernetes manifests, and automation workflows.