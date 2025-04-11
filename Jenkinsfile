
pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('aws-access-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
        REGION = 'us-east-1'
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/thumatvu87/sample-devops-app.git'
            }
        }
        stage('Terraform Init') {
            steps {
                dir('terraform') {
                    sh 'terraform init'
                }
            }
        }
        stage('Terraform Plan') {
            steps {
                dir('terraform') {
                    sh 'terraform plan'
                }
            }
        }
        stage('Terraform Apply') {
            steps {
                dir('terraform') {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t myapp:latest .'
            }
        }
        stage('Push to ECR') {
            steps {
                sh './scripts/push_to_ecr.sh'
            }
        }
        stage('Deploy to EC2') {
            steps {
                sh './scripts/deploy_to_ec2.sh'
            }
        }
    }
    post {
        always {
            echo 'Pipeline completed.'
        }
    }
}
