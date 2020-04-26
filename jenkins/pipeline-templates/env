pipeline {
    agent any

    environment {
        NAME = 'ricardo'
        LASTNAME = 'gonzalez'
    }

    stages {
        stage('Build') {
            steps {
                sh 'echo $NAME $LASTNAME'
            }
        }
    }
}