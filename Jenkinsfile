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

       stage('Terraform Init'){
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve tfplan'
            }
        }

        post {
            success {
                echo 'Pipeline executed successfully!'
            }
            failure {
                echo 'Pipeline failed. Please check the logs for details.'
            }

            }
        }
    }

