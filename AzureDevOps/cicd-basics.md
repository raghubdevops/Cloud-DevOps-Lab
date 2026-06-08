1. What is Azure DevOps?

Azure DevOps is a complete DevOps toolchain that provides:

Boards (Agile planning)
Repos (Git)
Pipelines (CI/CD)
Artifacts (packages)
Test Plans
2. CI vs CD (VERY IMPORTANT)
CI (Continuous Integration)
Code build + test automatically
Trigger: code push
CD (Continuous Delivery/Deployment)
Deploy application automatically
Interview answer:

CI ensures code is continuously integrated and validated, while CD automates deployment to different environments.

3. Azure DevOps Pipeline

Pipeline = automation workflow

Flow:
Code → Build → Test → Package → Deploy
4. YAML Pipeline (VERY IMPORTANT)

Azure DevOps uses YAML for pipelines.

Example:

trigger:
- main

pool:
  vmImage: ubuntu-latest

steps:
- script: echo "Building application"
5. Classic vs YAML Pipeline
| Feature     | Classic   | YAML       |
| ----------- | --------- | ---------- |
| UI          | GUI-based | Code-based |
| Versioning  | No        | Yes        |
| Recommended | No        | Yes        |

6. Branching Strategy (IMPORTANT INTERVIEW QUESTION)
Common model:
main → production
develop → integration
feature/* → new features
release/* → staging
7. Pull Request (PR)

Used to merge code safely.

Flow:
Feature branch → PR → Review → Merge to develop/main
8. Service Connection (VERY IMPORTANT)

Used to connect Azure DevOps with:

Azure Subscription
Docker Hub
Kubernetes
AWS (if needed)
9. Self-hosted vs Microsoft-hosted Agent
Type	Description
Microsoft Hosted	Managed by Azure DevOps
Self Hosted	Your own VM
10. Real CI/CD Flow (VERY IMPORTANT)
GitHub → Azure DevOps Pipeline → Docker Build → Push Image → AKS Deployment
11. Real Interview Scenario
Question:

How do you implement CI/CD for a web application?

Answer:

I configure Azure DevOps pipeline using YAML. The pipeline triggers on code commit, builds the application, runs tests, creates a Docker image, pushes it to Docker Hub, and deploys it to AKS using kubectl.