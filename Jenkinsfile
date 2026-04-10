pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'java-world-python:latest'
    }

    stages {
        stage('Checkout') {
            steps {
                // Ensure the URL is in single quotes
                git branch: 'main', url: 'https://github.com/sanskruti142003-beep/jenkins_docker_java__hello_world.git'
            }
        }

        stage('Docker Build') {
            steps {
                script {
                    // Check if Dockerfile exists before building
                    if (fileExists('Dockerfile')) {
                        sh "docker build -t ${env.DOCKER_IMAGE} ."
                    } else {
                        error "Build failed: Dockerfile not found in workspace."
                    }
                }
            }
        }
    }

    post {
        success {
            echo 'Pipeline finished successfully!'
        }
        failure {
            echo 'Pipeline failed. Check the console output above for errors.'
        }
    }
}
