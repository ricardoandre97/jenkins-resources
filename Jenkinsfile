pipeline {
  agent any
  stages {
    stage('Shell Test 1') {
      steps {
        sh 'echo "Test 1"'
        echo 'How are you?'
      }
    }

    stage('Parallel Branch') {
      parallel {
        stage('Parallel Branch') {
          steps {
            echo 'Branch 1 created'
            sh 'echo "soo jav bhaiya"'
          }
        }

        stage('Branch 1') {
          steps {
            sh 'echo "Idhar aao"'
            echo 'Branch 1 is good'
          }
        }

      }
    }

    stage('Build 16G-NA') {
      steps {
        sh 'echo "Build Completed"'
      }
    }

  }
}