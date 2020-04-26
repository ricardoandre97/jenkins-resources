pipeline {
    agent any

    environment {
        secret = credentials('TEST')
    }
    stages {
        stage('Example stage 1') {
            steps {
                sh 'echo $secret'
            }
        }
    }
}