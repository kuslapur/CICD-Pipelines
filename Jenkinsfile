pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/kuslapur/test01.git',
                    credentialsId: 'git'
            }
        }

        stage('Build') {
            steps {
                echo "Build started"
            }
        }

        stage('Test') {
            steps {
                echo "Running tests"
            }
        }
    }
}
