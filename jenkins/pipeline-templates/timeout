pipeline {
    agent any
    stages {
        stage('Deploy') {
            steps {
                retry(3) {
                    sh 'echo hello'
                }

                timeout(time: 3, unit: 'SECONDS') {
                    sh 'sleep 5'
                }
            }
        }
    }
}