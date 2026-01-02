pipeline {
    agent any

    tools {
        maven 'Maven-3.6.3'
    }

    environment {
        IMAGE_NAME = "java-devops-app"
    }

    stages {

        stage('Checkout Code') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Rajeev151124/java-devops-app.git'
            }
        }

        stage('Build with Maven') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t java-devops-app1 .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh '''
                docker rm -f java-devops-container || true
                docker run -d -p 9093:8080 --name java-devops-container java-devops-app1
                '''
            }
        }
    }
}
