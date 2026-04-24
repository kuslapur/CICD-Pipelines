pipeline {
    agent { label 'linux-node' }

    environment {
        AWS_REGION = "ap-south-1"
        
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

       stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }

    post {
        success {
            echo 'EC2 Instance Created Successfully!'
        }
        failure {
            echo 'Pipeline Failed!'
        }
    }
}