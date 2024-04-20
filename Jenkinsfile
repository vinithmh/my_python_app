// Jenkinsfile

pipeline {
    agent any

    stages {
        stage('Install Dependencies') {
            steps {
                script {
                    docker.image('jenkins_python_app').inside {
                        sh 'pip install -r requirements.txt'
                    }
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('simple-flask-app')
                }
            }
        }
        
        stage('Run Container') {
            steps {
                script {
                    docker.image('simple-flask-app').run('-p 5000:5000')
                }
            }
        }
    }
}
