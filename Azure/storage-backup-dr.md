1. Azure Storage Account

A storage account is a container for all Azure storage services.

Types of storage inside it:
Blob (Object storage)
File (SMB shares)
Queue (messaging)
Table (NoSQL)
Interview answer:

Azure Storage Account is a globally unique namespace that provides access to different storage services like Blob, File, Queue, and Table.

2. Azure Blob Storage

Used for unstructured data

Examples:

Images
Videos
Logs
Backups
Types:
Hot (frequent access)
Cool (less frequent)
Archive (rare access)
3. Azure File Storage

Used for shared file systems

Use case:
Lift & shift applications
Shared drives between VMs
4. Azure Queue Storage

Used for messaging between applications

Example:

Order processing system
Microservices communication
5. Azure Table Storage

Used for NoSQL key-value data

6. Azure Backup

Used for:

VM backup
File backup
SQL backup
Key concept:

Recovery Services Vault

7. Azure Site Recovery (ASR)

Used for Disaster Recovery (DR)

Concept:
Replicates VM from one region to another
Enables failover during disaster
8. Backup vs ASR (Very Important Interview Question)
| Feature  | Backup              | ASR                   |
| -------- | ------------------- | --------------------- |
| Purpose  | Data recovery       | Full system recovery  |
| Scope    | Files/VM snapshots  | Entire VM replication |
| RPO/RTO  | Higher              | Lower                 |
| Use case | Accidental deletion | Region failure        |
9. Real Interview Scenario
Question:

How will you design disaster recovery for a production VM?

Answer:

I will use Azure Site Recovery to replicate the VM to a secondary region and configure failover. For data protection, I will also enable Azure Backup using Recovery Services Vault.

10. Storage Security (Important)
Shared Access Signature (SAS)
Access Keys
RBAC
Private Endpoint