pipeline {
    agent any 

    stages {
        stage('Requirements') {
            steps {
                sh '''
                python3 -m venv venv
                . venv/bin/activate
                pip install -r requirements.txt
                '''
            }
        }

        stage('Test') {
            steps {
                sh 'pytest tester.py'
            }
        }

        stage('Docker building') {
            steps {
                sh 'docker build -t image .'
            }
        }

        stage('Docker running') {
            steps {
                sh 'docker run -d -p 8000:8000 image'
            }
        }
    }
}