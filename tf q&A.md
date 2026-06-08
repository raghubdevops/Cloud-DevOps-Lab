Q: How does Terraform know the Storage Account or any resources depends on the Resource Group?

Answer:

Terraform automatically creates an implicit dependency when one resource references another resource's attributes. Since the Storage Account uses the Resource Group name and location, Terraform creates the Resource Group first and then the Storage Account.

What is Terraform State?

Answer:

Terraform State is a file that stores the current state of the infrastructure managed by Terraform. It maps Terraform configuration to real cloud resources and helps Terraform determine what changes need to be made during plan and apply operations.

Q: Why use terraform.tfvars?

Answer:

terraform.tfvars is used to separate configuration values from Terraform code. It allows the same codebase to be reused across multiple environments by supplying different variable values.

Q: What is the difference between variables.tf and terraform.tfvars?

Answer:

variables.tf defines the variables and their types, while terraform.tfvars provides the actual values for those variables.

Q: How do you manage multiple environments?

Answer:

I maintain separate tfvars files such as dev.tfvars, uat.tfvars, and prod.tfvars, while reusing the same Terraform code.

Example:terraform plan -var-file=dev.tfvars
terraform plan -var-file=prod.tfvars

Q: Difference between terraform plan -destroy and terraform destroy?

Answer:

terraform plan -destroy only previews which resources will be deleted, while terraform destroy actually removes the infrastructure managed by Terraform.

Q: Why use a remote backend?

Answer:

Remote backends centralize Terraform state, enable team collaboration, provide state locking, improve security, and prevent state file loss.

Q: What happens when you run terraform init after configuring a backend?

Answer:

Terraform initializes the backend configuration and can migrate existing local state to the remote backend. After migration, Terraform operations use the remote state instead of the local state file.