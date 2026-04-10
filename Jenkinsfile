pipeline {
	agent any

	envieonment {
		DOCKER_IMAGE = 'hello-world-python:latest' //Docker image name
	}
	stages {
		satge('Checkout') {
			steps {
				git branch: 'main' , url:
				https://github.com/sanskruti142003-beep/jenkins_docker_pyhton_hello_world.git
			      }
			}
	stage ('Docker Build') {
		steps {
			script {
			   if (fileExists('Dockerfile')) {
				sh "docker build -t ${env.DOCKER_IMAGE} ."
			} else {
			   error "Dockerfile not found in the workspace" 
			}
		    }
	        }
            }
	post {
		success {
			echo 'Success'
			}
		failure {
			echo 'Failure'
		} } }
			
 
