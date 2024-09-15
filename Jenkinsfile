pipeline {
    agent any 

    stages {
        stage('Requirements And Test') {
            steps {
                sh '''
                python3 -m venv venv
                . venv/bin/activate
                pip install -r requirements.txt
                python3 tester.py
                '''
            }
        }
        

        stage('Docker Login') {
            steps {
                withCredentials([string(credentialsId: 'LOCALHOST', variable: 'DOCKER_PASSWORD')]) {
                    sh 'echo $DOCKER_PASSWORD | docker login -u mustafa3li --password-stdin'
                }
            }
        }

        stage('Docker Build') { 
            steps {
                sh 'docker build -t mustafa3li/palestine:latest .' 
            }
        }

        stage('Docker Push') {
            steps {
                sh 'docker push mustafa3li/palestine:latest'
            }
        }
    }
}