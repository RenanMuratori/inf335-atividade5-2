pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh "docker build -t olaunicamp ."
            }
        }
        stage('Run') {
            steps {
                sh "docker run -i olaunicamp"
            }
        }
    }
}