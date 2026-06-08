Day 1 – Session 3: Azure Compute (Core + Interview Focus)
Goal of this session

Understand VM, VMSS, Availability Set, Availability Zones + real interview answers.

1. Azure Virtual Machine (VM)

A VM is a software-based computer in Azure.

Key points:
Full control (OS, software, patches)
IaaS (Infrastructure as a Service)
You manage OS
Interview answer:

Azure VM is an Infrastructure-as-a-Service offering where users can deploy and manage virtual machines with full control over the operating system and applications.

2. Availability Set

Used for high availability inside a datacenter.

Concept:
Protects against hardware failure
Uses Fault Domains (FD) and Update Domains (UD)
Key point:
Same datacenter
No geographic separation
Interview answer:

Availability Set ensures VMs are distributed across multiple fault and update domains within a datacenter to protect against hardware and planned maintenance failures.

3. Availability Zones

Used for high availability across datacenters in same region.

Concept:
Each zone = separate datacenter
Zone 1 / Zone 2 / Zone 3
Key point:
Higher SLA than Availability Set
Recommended for production
Interview answer:

Availability Zones provide physically separate datacenters within a region to protect applications from datacenter-level failures.

4. VM Scale Set (VMSS)

Used for auto scaling of VMs

Features:
Auto scaling based on CPU/load
Load balanced
Same configuration across VMs
Interview answer:

VM Scale Set is used to deploy and manage a group of identical VMs that automatically scale in or out based on demand.

5. Quick Comparison (Very Important)
Feature	Availability Set	Availability Zone	VMSS
Scope	Datacenter	Multiple datacenters	Scalable VM group
Purpose	Hardware failure protection	Datacenter failure protection	Auto scaling
Control	Manual	Manual	Automated
Use case	Legacy apps	Production apps	Web apps, microservices
6. Real Interview Scenario
Question:

You have a web app and need 99.99% uptime. What will you use?

Answer:

I will use Availability Zones with Load Balancer to distribute VMs across multiple datacenters within a region to ensure high availability.

7. Architecture Thinking (Important)

Typical 3-tier app:

User → Load Balancer → Web VMSS → App Layer → Database

High availability options:

VMSS + Zones = Best
Availability Set = Medium
Single VM = Not recommended