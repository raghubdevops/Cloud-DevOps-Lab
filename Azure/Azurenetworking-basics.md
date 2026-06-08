1. Virtual Network (VNet)

A VNet is your private network in Azure.

Key points:
Isolated network in cloud
You define IP ranges (CIDR)
Example: 10.0.0.0/16
Interview answer:

Azure Virtual Network is a logically isolated network that allows secure communication between Azure resources.

2. Subnet

Subnet divides VNet into smaller networks.

Example:
Web Subnet → 10.0.1.0/24
App Subnet → 10.0.2.0/24
DB Subnet  → 10.0.3.0/24

Why used?
Isolation
Security
Traffic control
3. Network Security Group (NSG)

NSG = Firewall for subnet or NIC

Rules:
Allow / Deny traffic
Based on port, IP, protocol

Example:

Allow HTTP 80
Allow HTTPS 443
Deny everything else
Interview answer:

NSG is used to filter inbound and outbound traffic to Azure resources based on security rules.

4. Azure Load Balancer

Used for traffic distribution (Layer 4)

Key points:
TCP/UDP
High performance
No SSL termination
Flow:
Client → Load Balancer → VM1 / VM2 / VM3

5. Application Gateway (VERY IMPORTANT)

Layer 7 load balancer.

Features:
URL-based routing
SSL termination
Web Application Firewall (WAF)
Interview answer:

Application Gateway is a Layer 7 load balancer used for routing HTTP/HTTPS traffic with advanced features like WAF and SSL termination.

6. Load Balancer vs Application Gateway

| Feature  | Load Balancer | App Gateway |
| -------- | ------------- | ----------- |
| Layer    | 4             | 7           |
| Protocol | TCP/UDP       | HTTP/HTTPS  |
| SSL      | No            | Yes         |
| Routing  | Basic         | Advanced    |

7. Azure Bastion

Used for secure VM access without public IP

Key point:
No RDP/SSH exposed to internet
Access via Azure Portal
8. VPN Gateway vs ExpressRoute
VPN Gateway:
Over internet
Encrypted tunnel
ExpressRoute:
Private connection
High speed
Enterprise use
9. Real Interview Scenario
Question:

You need secure access to VM without public IP. What will you use?

Answer:

I will use Azure Bastion to securely connect to the VM without exposing it to the public internet.