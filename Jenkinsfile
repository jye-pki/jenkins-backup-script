pipeline {
  agent {
    node {
      label 'linux-docker'
    }

  }
  stages {
    stage('stage1') {
      parallel {
        stage('stage4') {
          steps {
            echo 'test'
          }
        }
        stage('stage3') {
          steps {
            echo 'test1'
          }
        }
        stage('') {
          steps {
            sleep 4
          }
        }
      }
    }
    stage('stage2') {
      steps {
        echo 'stage2'
      }
    }
    stage('stage5') {
      steps {
        sleep 20
      }
    }
  }
}