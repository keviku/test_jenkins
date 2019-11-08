pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'ssh ec2-3-83-90-35.compute-1.amazonaws.com'
                sh 'cd test3_empty'
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
