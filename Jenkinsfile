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
        

        stage('Docker building') { 
            steps {
                sh 'docker build -t image .' 
            }
        }

        steps ("Helm Deployment") {
            steps {
                sh 'helm upgrade --install palestine ./palestine-chart -n palestine-ns --create-namespace'
            }
        }
    }
}