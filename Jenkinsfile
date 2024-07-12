pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh "docker build . -t OlaUnicamp"
            }
        }
        stage('Run') {
            steps {
                sh "docker run . -t OlaUnicamp"
            }
        }
    }
}