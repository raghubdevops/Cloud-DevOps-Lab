1. Why Scripting is Important in DevOps

DevOps engineers automate:

VM provisioning checks
Log cleanup
Deployment steps
CI/CD tasks
Monitoring scripts
2. Shell Scripting Basics (Linux / WSL)
Simple script:
#!/bin/bash
echo "Hello DevOps"

Run:

bash script.sh
Variables:
name="Azure"
echo $name
If condition:
if [ $x -gt 10 ]
then
  echo "Greater"
fi
Loops:
for i in 1 2 3
do
  echo $i
done
3. PowerShell Basics (VERY IMPORTANT for Azure DevOps)
Variable:
$name = "Azure"
Write-Output $name
If condition:
if ($x -gt 10) {
  Write-Output "Greater"
}
Loop:
for ($i=1; $i -le 5; $i++) {
  Write-Output $i
}
4. Real DevOps Automation Examples
Example 1: Check service status
Get-Service | Where-Object {$_.Status -eq "Running"}
Example 2: Azure CLI automation in script
az group create --name rg-dev --location eastus
5. Shell vs PowerShell (INTERVIEW QUESTION)
| Feature | Shell   | PowerShell               |
| ------- | ------- | ------------------------ |
| OS      | Linux   | Windows + Linux          |
| Output  | Text    | Objects                  |
| Usage   | Servers | Azure/Windows automation |

6. DevOps Real Use Case
Script → Build VM → Install dependencies → Deploy app → Validate
7. Interview Scenario
Question:

How do you automate repetitive tasks in Azure DevOps?

Answer:

I use PowerShell or Bash scripting to automate tasks like resource provisioning, deployments, and cleanup operations. These scripts are integrated into CI/CD pipelines for automation.