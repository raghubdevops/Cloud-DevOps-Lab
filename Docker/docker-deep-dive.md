1. Docker Architecture
Docker Client → Docker Daemon → Images → Containers
Key components:
Docker Client: CLI you use
Docker Daemon: background engine
Images: templates
Containers: running instances
2. Docker Image vs Container (VERY IMPORTANT)
| Image     | Container          |
| --------- | ------------------ |
| Blueprint | Running instance   |
| Immutable | Mutable at runtime |
| Stored    | Executed           |

Interview answer:

A Docker image is a read-only template, while a container is a running instance of that image.

3. Dockerfile (CORE INTERVIEW TOPIC)

Example:

FROM nginx
COPY index.html /usr/share/nginx/html
EXPOSE 80
Meaning:
Base image: nginx
Copy file into container
Expose port 80
4. Docker Layers (IMPORTANT)

Each instruction creates a layer:

FROM → RUN → COPY → CMD
Benefit:
Faster builds
Reusability
Caching
5. Docker Volumes

Used for persistent data

Problem:
Containers are temporary → data is lost

Solution:

Volumes
docker volume create mydata
6. Docker Networking

Types:

Bridge (default)
Host
None

Example:

Container A ↔ Container B via bridge network
7. Docker Registry

Stores images:

Docker Hub (public)
Azure Container Registry (ACR)
8. Docker in CI/CD Pipeline
GitHub → Azure DevOps → Docker Build → Docker Hub → AKS
9. Real Interview Scenario
Question:

How do you containerize an application?

Answer:

I create a Dockerfile defining the base image, copy application code, expose required ports, and build the image using docker build. The image is then pushed to a container registry and deployed using Kubernetes.