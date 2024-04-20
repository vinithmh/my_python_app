pipeline {
    agent any

    stages {
        stage('Install Dependencies') {
            steps {
                script {
                    docker.image('vinithmh/jenkins_pipeline_app:latest').inside {
                        sh 'pip install -r requirements.txt'
                    }
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('jenkins_python_app', '.')
                }
            }
        }
        
        stage('Run Container') {
            steps {
                script {
                    docker.image('jenkins_python_app').run('-p 5000:5000')
                }
            }
        }
    }
}
