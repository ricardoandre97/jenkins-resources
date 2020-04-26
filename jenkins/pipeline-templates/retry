pipeline {
    agent any
    stages {
        stage('Timeout') {
            steps {
                retry(3) {
                    sh 'I am not going to work :c'
                }
            }
        }
    }
}