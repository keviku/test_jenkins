pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t test/gatsby .'
            }
        }
        stage('Deploy') {
            steps {
                sh "docker run -d --name test-site -p 8100:80 test/gatsby"
            }
        }
    }
}