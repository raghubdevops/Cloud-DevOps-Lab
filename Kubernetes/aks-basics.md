1. What is Kubernetes?

Kubernetes is a container orchestration platform.

It manages:
Containers
Scaling
Load balancing
Self-healing
Deployment automation
Interview answer:

Kubernetes is a container orchestration platform used to automate deployment, scaling, and management of containerized applications.

2. What is AKS?

AKS = Azure Kubernetes Service

Key points:
Managed Kubernetes in Azure
Azure manages control plane
You manage worker nodes
3. Kubernetes Architecture
Master Node (Control Plane)
    |
Worker Nodes
    |
Pods (Containers)
4. Core Kubernetes Objects
Pod (MOST IMPORTANT)
Smallest unit in Kubernetes
Contains one or more containers
Deployment
Manages Pods
Handles replicas and updates

Example:

3 replicas of app
Service
Exposes application
Types:
ClusterIP (internal)
NodePort (external)
LoadBalancer (cloud)
Namespace
Logical separation inside cluster

Example:

dev
test
prod
5. Kubernetes YAML (VERY IMPORTANT)

Example Deployment:

apiVersion: apps/v1
kind: Deployment
metadata:
  name: myapp
spec:
  replicas: 2
  selector:
    matchLabels:
      app: myapp
  template:
    metadata:
      labels:
        app: myapp
    spec:
      containers:
      - name: myapp
        image: nginx
        ports:
        - containerPort: 80
6. kubectl Commands (INTERVIEW ESSENTIAL)
kubectl get pods
kubectl get svc
kubectl get deployments
kubectl apply -f file.yaml
kubectl delete pod <name>
7. Kubernetes Flow in Real World
Developer → Docker Image → Docker Hub → AKS → Pods → Service → Users
8. Scaling in Kubernetes
Manual:
kubectl scale deployment myapp --replicas=5
Auto scaling:
Horizontal Pod Autoscaler (HPA)
9. Self-Healing Feature

If a pod fails:

Kubernetes automatically recreates it
10. Real Interview Scenario
Question:

How do you deploy a containerized application in AKS?

Answer:

I build a Docker image, push it to Docker Hub, create Kubernetes deployment YAML, and apply it using kubectl. Kubernetes then creates pods and exposes them using a service.