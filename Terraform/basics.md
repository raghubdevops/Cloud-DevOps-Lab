1. What is Terraform?

Terraform is an Infrastructure as Code (IaC) tool used to create and manage cloud resources using code.

Key idea:

Instead of clicking in Azure Portal → you write code.

Interview answer:

Terraform is an Infrastructure as Code tool used to provision and manage cloud infrastructure in a declarative manner across multiple cloud providers.

2. Why Terraform?
Version controlled infrastructure
Repeatable deployments
Multi-cloud support (Azure, AWS, GCP)
Automation friendly
3. Core Terraform Components
Provider

Defines cloud (Azure, AWS, etc.)

provider "azurerm" {
  features {}
}
Resource

Actual infrastructure

Example VM:

resource "azurerm_resource_group" "rg" {
  name     = "rg-dev"
  location = "East US"
}
Variables

Used for dynamic values

variable "location" {
  default = "East US"
}
Output

Displays results

output "rg_name" {
  value = azurerm_resource_group.rg.name
}
4. Terraform Workflow (VERY IMPORTANT)
terraform init
terraform plan
terraform apply
terraform destroy
Meaning:
init → initialize project
plan → preview changes
apply → create resources
destroy → delete resources
5. State File (VERY IMPORTANT INTERVIEW TOPIC)

Terraform stores infrastructure state in:

terraform.tfstate
Purpose:
Tracks real infrastructure
Helps detect changes (drift)
6. Drift in Terraform

Drift = manual changes in cloud not reflected in code.

Example:

You delete VM in Azure Portal manually
Terraform state becomes inconsistent
7. Terraform vs ARM Templates
| Feature     | Terraform | ARM     |
| ----------- | --------- | ------- |
| Multi-cloud | Yes       | No      |
| Language    | HCL       | JSON    |
| Ease        | Easy      | Complex |

8. Real Architecture Example
Terraform → Azure Resource Group → VNet → VM → Storage → AKS
9. Real Interview Scenario
Question:

How do you manage infrastructure in Azure using automation?

Answer:

I use Terraform as Infrastructure as Code tool to define and provision Azure resources such as VMs, VNets, and storage accounts. The code is version-controlled in GitHub and deployed through CI/CD pipelines.