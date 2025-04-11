
# CI/CD Pipeline with Terraform, Jenkins & AWS

This repository demonstrates a real-world DevOps pipeline with automated infrastructure provisioning, Docker image builds, and application deployment to AWS EC2 using Jenkins.

## 📂 Folder Structure
- terraform/ : Infrastructure as code for EC2 & S3
- jenkins/ : Complete Jenkinsfile for end-to-end pipeline
- scripts/ : Utility scripts for ECR push & EC2 deploy
- docs/ : Screenshots, logs, and architecture diagrams

## 🚀 Pipeline Flow
1. Checkout code from GitHub
2. Provision infra using Terraform
3. Build Docker image
4. Push image to AWS ECR
5. Deploy to EC2 instance using SSH

## 🛠️ Technologies
- AWS (EC2, S3, ECR)
- Terraform
- Jenkins
- Docker
- Bash scripting
